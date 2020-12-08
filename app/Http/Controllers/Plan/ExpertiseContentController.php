<?php

namespace App\Http\Controllers\Plan;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Plan\ExpertiseContent;
use App\Http\Requests;
use App\Http\Requests\Plan\ExpertiseContentRequest;
use App\Http\Controllers\Controller;
use App\Plan\Council;
use Mail, Route, DateTime;

class ExpertiseContentController extends Controller
{
    private $topicStatus = 2;
    private $categoryCouncil = 1;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // Kiểm tra là đang ở thẩm định hay triển khai.
        // Dùng chung nên mới làm như vậy
        $request->session()->put('state', 'expertise');

        // Mảng tìm kiếm dữ liệu
        $search_data = array(
            'council' => $request->council,
            'topic'   => $request->topic,
            'dngaybc' => $request->dngaybc,
            'ketqua'  => $request->ketqua
        );

        $content                  = new ExpertiseContent();
        $data['keyword']          = trim($request->keyword);
        $data['page']             = $request->page;
        $data['paginatorContent'] = $content->getExpertiseResult($search_data, $this->categoryCouncil);
        $data['topic']            = Topic::where('pk_imatt', '=', $this->topicStatus)
                                         ->select('pk_imadt','stendt')
                                         ->get()
                                         ->toArray();

        $data['council'] = Council::where('iloaihoidong', '=', $this->categoryCouncil)
                                  ->select('pk_imahd', 'stenhd')
                                  ->orderBy('pk_imahd', 'DESC')
                                  ->take(50)
                                  ->get()
                                  ->toArray();

        $data['search_data'] = $search_data;
        return view('plan.expertise_content.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = array(
            'topic_list' => Topic::where('pk_imatt', 2)->whereNotIn('pk_imadt', function ($query) {
                                    $query->select('fk_imadt')->from('tblhopdong');
                            })->select('pk_imadt', 'stendt')->get()
        );

        return view('plan.expertise_content.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ExpertiseContentRequest $request)
    {
        $content = new ExpertiseContent();
        $content->fk_imahdkh = $content->getExpertise($request->txtDetai);
        $content->dngaybc    = $request->txtNgayDuyet;
        $content->iloaiduyet = 1; // Loại duyệt là "Thẩm định"
        $content->bketqua    = $request->txtKetQua;
        $content->snoidung   = $request->txtNoidung;
        $content->sghichu    = $request->txtGhichu;
        $content->created_at = new DateTime();
        $content->updated_at = new DateTime();
        $content->save();

        return redirect()->route('admin.expertise_content.create')->with([
            'flash_level'   => 'success',
            'flash_message' => sprintf("Cập nhật nội dung thẩm định thành công. <br>Sử dụng chức năng gửi email để <b>thông báo kết quả báo cáo tiến độ<b> <button class='btn btn-default btn-sm'><span class='glyphicon glyphicon-envelope'></span></button>")
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $content = new ExpertiseContent();
        $content = $content->getContent($id);

        // Sử dụng mã hội đồng thẩm định để lấy toàn bộ những lần thẩm định của đề tài đó
        $data = array(
            'topic_list' => Topic::where('pk_imatt', 2)->select('pk_imadt', 'stendt')->get(),
            'content'    => $content,
            'expertise'  => ExpertiseContent::where('fk_imahdkh', $content->fk_imahdkh)->orderBy('pk_imabctd', 'DESC')->get()
        );

        return view('plan.expertise_content.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ExpertiseContentRequest $request, $id)
    {
        $content = ExpertiseContent::findOrFail($id);
        $content->fk_imahdkh = $content->getExpertise($request->txtDetai);
        $content->dngaybc    = $request->txtNgayDuyet;
        $content->iloaiduyet = 1; // Loại duyệt là "Thẩm định"
        $content->bketqua    = $request->txtKetQua;
        $content->snoidung   = $request->txtNoidung;
        $content->sghichu    = $request->txtGhichu;
        $content->updated_at = new DateTime();
        $content->save();

        return redirect()->route('admin.expertise_content.index')->with([
            'flash_level'   => 'success',
            'flash_message' => sprintf("Cập nhật nội dung thẩm định thành công. <br>Sử dụng chức năng gửi email để <b>thông báo kết quả báo cáo tiến độ<b> <button class='btn btn-default btn-sm'><span class='glyphicon glyphicon-envelope'></span></button>")
        ]);
    }


    /**
     * Ajax lấy các thông tin thẩm định/khảo sát của đề tài
     * @param $rquest: Đối tượng gửi dữ liệu
     * @return services
     * @author asus
     **/
    public function ajax(Request $request)
    {
        if ($request->ajax()) {
            $topicID = $request->id;
            $councilCategory = $request->councilCategory;
            $content = new ExpertiseContent();
            $data = $content->getContentTopic($topicID, $councilCategory);
            return response()->json($data);
        }
    } // End action ajax


    /**
     * Trả về nội dung thẩm định của đề tài đã chọn từ combobox.
     * Từ phương thức load callback lại lên server rồi đẩy sang view foreach
     * @link
     * @return json
     * @author asus
     **/
    public function result(Request $request)
    {
        $data = $request->data;
        return view('plan.expertise_content.result', compact('data'));
    } // End action result


    /**
     * Lấy thông tin đề tài, chủ nhiệm đề tài
     * @param (int) $topicID: Mã đề tài
     * @return json
     * @author asus
     **/
    public function resource(Request $request)
    {
        $content = new ExpertiseContent;
        $data = $content->getLeader($request->id);
        return response()->json($data);
    } // End action resource


    /**
     * Gửi email cho chủ nhiệm thông báo kết quả thẩm định, kết quả khảo sát
     * @param $request: Đối tượng request
     * @return void
     * @author asus
     **/
    public function email(Request $request)
    {
        // Mảng dữ liệu, nội dung email gửi cho user
        $data = array(
            'title'       => $request->txtTitle,
            'description' => $request->txtContent,
            'email'       => $request->txtEmail,
        );

        // Nếu có đính kèm, upload file đó lên server trước
        if ($request->hasFile('fAttach')) {
            $destinationPath = 'upload/file_send_email';
            $request->file('fAttach')->move($destinationPath, $request->fAttach->getClientOriginalName());
        }

        // Gửi email cho user
        Mail::send('plan.expertise_content.email_content', $data, function ($message) use ($request) {
            $message->from('quanlykhoahoc2016@gmail.com', 'Hệ thống quản lý ABC');
            $message->to($request->txtEmail);
            $message->subject($request->txtTitle);

            if (!empty ($request->fAttach)) {
                $file_path  = 'upload/file_send_email/' . $request->fAttach->getClientOriginalName();
                $attachment = public_path($file_path);
                $message->attach($attachment);
            }
        }, true);

        // Update trạng thái đã gửi email
        $content = ExpertiseContent::findOrFail($request->progressID);
        $content->bsendmail = 1;
        $content->save();   // Lưu trường đã gửi email

        $state = $request->session()->get('state');

        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => sprintf('Gửi email cho chủ nhiệm báo cáo kết quả %s đề tài thành công', $state == 'expertise' ? 'thẩm định' : 'khảo sát')
        ]);
    } // End action email
} // End class
