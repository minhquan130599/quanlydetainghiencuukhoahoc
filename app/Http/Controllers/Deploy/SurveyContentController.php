<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Http\Requests;
use App\Plan\ExpertiseContent;
use App\Http\Controllers\Controller;
use App\Http\Requests\Plan\ExpertiseContentRequest;
use App\Plan\Council;
use Route;

class SurveyContentController extends Controller
{
    private $topicStatus = 3;
    private $categoryCouncil = 2;

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


        $content = new ExpertiseContent();
        $data['page'] = $request->page;
        $data['keyword'] = $request->keyword;
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
        return view('deploy.survey_content.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['topic_list'] = Topic::where('pk_imatt', 3)->select('pk_imadt', 'stendt')->get();
        return view('deploy.survey_content.create', compact('data'));
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
        $content->fk_imahdkh = $content->getExpertise($request->txtDetai, 2);
        $content->dngaybc    = $request->txtNgayDuyet;
        $content->iloaiduyet = 2; // Loại duyệt là "khảo sát"
        $content->bketqua    = $request->txtKetQua;
        $content->snoidung   = $request->txtNoidung;
        $content->sghichu    = $request->txtGhichu;
        $content->save();

        return redirect()->route('admin.survey_content.index')->with([
            'flash_level' => 'success',
            'flash_message' => sprintf("Cập nhật nội dung khảo sát thành công. <br>Sử dụng chức năng gửi email để <b>thông báo kết quả báo cáo tiến độ cho chủ nhiệm</b> <button class='btn btn-default btn-sm'><span class='glyphicon glyphicon-envelope'></span></button>")
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

        // Sử dụng mã hội đồng khảo sát để lấy toàn bộ những khảo sát của đề tài đó
        $data = array(
            'topic_list' => Topic::where('pk_imatt', 3)->select('pk_imadt', 'stendt')->get(),
            'content'    => $content,
            'expertise'  => ExpertiseContent::where('fk_imahdkh', $content->fk_imahdkh)->orderBy('pk_imabctd', 'DESC')->get()
        );

        return view('deploy.survey_content.edit', compact('data'));
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
        $content = ExpertiseContent::findOrFail($id);
        $content->fk_imahdkh = $content->getExpertise($request->txtDetai, 2);
        $content->dngaybc    = $request->txtNgayDuyet;
        $content->iloaiduyet = 2; // Loại duyệt là "Khảo sát"
        $content->bketqua    = $request->txtKetQua;
        $content->snoidung   = $request->txtNoidung;
        $content->sghichu    = $request->txtGhichu;
        $content->save();

        return redirect()->route('admin.survey_content.index')->with([
            'flash_level'   => 'success',
            'flash_message' => sprintf("Cập nhật nội dung khảo sát thành công. <br>Sử dụng chức năng gửi email để <b>thông báo kết quả báo cáo tiến độ cho chủ nhiệm</b> <button class='btn btn-default btn-sm'><span class='glyphicon glyphicon-envelope'></span></button>")
        ]);
    }
} // End class
