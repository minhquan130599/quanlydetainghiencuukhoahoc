<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Plan\Topic;
use App\Deploy\AcceptanceContent;
use App\Deploy\Acceptance;
use App\Category\Rate;
use App\Http\Requests\Deploy\AcceptanceRequest;
use App\Plan\Council;
use Mail;

class AcceptanceContentController extends Controller
{
    private $categoryCouncil = 3;
    private $topic = array(5, 6);

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $content = new AcceptanceContent();

        // Mảng tìm kiếm dữ liệu
        $search_data = array(
            'council' => $request->council,
            'topic'   => $request->topic,
            'dngaybc' => $request->dngaybc,
            'xeploai' => $request->xeploai
        );

        $data = array(
            'paginatorContent' => $content->getResult($search_data),
            'keyword'          => $request->input('keyword'),
            'page'             => $request->page,
            'council'          => Council::where('iloaihoidong', '=', $this->categoryCouncil)
                                          ->select('pk_imahd', 'stenhd')
                                          ->orderBy('pk_imahd', 'DESC')
                                          ->take(50)
                                          ->get()
                                          ->toArray(),
            'rate' => Rate::all(),
            'topic' => Topic::whereIn('pk_imatt', $this->topic)
                            ->select('stendt', 'pk_imadt')
                            ->take(50)
                            ->orderBy('pk_imadt', 'DESC')
                            ->get(),

            'search_data' => $search_data
        );
        return view('deploy.acceptance_content.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $content = new AcceptanceContent();
        $data = array(
            'topic' => $content->getTopic(5),
            'rate' => Rate::all()
        );
        return view('deploy.acceptance_content.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AcceptanceRequest $request)
    {
        $content = new AcceptanceContent();
        $content->pk_imahddt      = Acceptance::where('fk_imadt', '=', $request->input('txtDetai'))
                                              ->firstOrFail()->pk_imahddt;
        $content->ssoqdntcs       = $request->input('txtSoQDNTCS');
        $content->fdiemntcs       = $request->input('txtDiemNTCS');
        $content->dngayntcs       = $request->input('txtNgayNTCS');
        $content->ssoqdntct       = $request->input('txtSoQDNTCT');
        $content->dngayqdntct     = $request->input('txtNgayQDNTCT');
        $content->dngayntct       = $request->input('txtNgayNTCT');
        $content->fdiemtbntct     = $request->input('txtDiemTBNTCT');
        $content->fk_imadmxeploai = $request->input('txtXeploai');
        $content->sghichu         = $request->input('txtGhichu');
        $content->save();

        return redirect()->route('admin.acceptance_content.create')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật nội dung nghiệm thu thành công'
        ]);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $content = new AcceptanceContent();

        $data = array(
            'topic'      => AcceptanceContent::findOrFail($id),
            'topic_name' => $content->getTopicName($id),
            'rate'       => Rate::all(),
            'explain'    => AcceptanceContent::findOrFail($id)
        );

        return view('deploy.acceptance_content.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $content = AcceptanceContent::findOrFail($id);
        $content->ssoqdntcs       = $request->input('txtSoQDNTCS');
        $content->fdiemntcs       = $request->input('txtDiemNTCS');
        $content->dngayntcs       = $request->input('txtNgayNTCS');
        $content->ssoqdntct       = $request->input('txtSoQDNTCT');
        $content->dngayqdntct     = $request->input('txtNgayQDNTCT');
        $content->dngayntct       = $request->input('txtNgayNTCT');
        $content->fdiemtbntct     = $request->input('txtDiemTBNTCT');
        $content->fk_imadmxeploai = $request->input('txtXeploai');
        $content->sghichu         = $request->input('txtGhichu');
        $content->save();

        return redirect()->route('admin.acceptance_content.edit', $id)->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật nội dung nghiệm thu thành công'
        ]);
    }


    /**
     * Gửi email báo cho chủ nhiệm đề tài
     * @link
     * @return void
     * @author asus
     **/
    public function email(Request $request)
    {
        $data = array(
            'title' => $request->input('txtTitle'),
            'description' => $request->input('txtContent')
        );

        // // Upload file lên server trước, sau đó lấy đường dẫn attach
        if ($request->hasFile('fAttach')) {
            $destinationPath = 'upload/file_send_email';
            $request->file('fAttach')->move($destinationPath, $request->fAttach->getClientOriginalName());
        }

        Mail::send('deploy.acceptance_content._email_content', $data, function ($message) use ($request) {
            $message->from('quankykhoahoc2016@gmail.com', 'Hệ thống quản lý khoa học');
            $message->to($request->input('txtEmail'));
            $message->subject($request->input('txtTitle'));
            $message->priority(3);


            if (!empty ($request->fAttach)) {
                $file_path  = 'upload/file_send_email/' . $request->fAttach->getClientOriginalName();
                $attachment = public_path($file_path);
                $message->attach($attachment);
            }
        }, true);

        // Update trạng thái là đã gửi email
        $content = AcceptanceContent::findOrFail($request->input('explainID'));
        $content->bsendmail = 1;
        $content->save();

        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Gửi email báo kết quả nghiệm thu thành công'
        ]);
    } // End action email


    /**
     * Lấy thông tin chủ nhiệm đề tài
     * @link (int)  $id: Mã đề tài
     * @return void
     * @author asus
     **/
    public function leader(Request $request)
    {
        $id = $request->id;
        $content = new AcceptanceContent();
        $data = $content->getLeader($id, 3);
        return response()->json($data);
    } // End action leader
} // End class
