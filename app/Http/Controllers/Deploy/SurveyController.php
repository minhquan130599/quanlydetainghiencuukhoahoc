<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;
use App\Plan\Topic; // Model đề tài
use App\Plan\Expertise; // Model thẩm định (bảng tblhoidong_kehoach)
use App\Plan\Council;
use App\Category\Unit;  // Model lấy đơn vị
use App\Deploy\Survey;  // Model lấy đơn vị
use App\Http\Requests;
use App\Http\Requests\Plan\ExpertiseRequest;
use App\Http\Controllers\Controller;

class SurveyController extends Controller
{
    private $categoryCouncil = 2;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
         // Mảng tìm kiếm theo tiêu chí
        $search_data = array(
            'criteria' => $request->criteria,
            'keyword'  => trim($request->keyword)
        );


        $object = new Expertise();
        $topic = $object->getTopic($this->categoryCouncil);  // 2: loại hội đồng là khảo sát
        $topicArray = array();

        foreach ($topic AS $value)
        {
            $hasExpertise = !empty($value->fk_imahdkh) ? '<b>(Đã khảo sát)</b>' : null;
            if (array_key_exists($value->pk_imahd, $topicArray)) {
                $topicArray[$value->pk_imahd] = $topicArray[$value->pk_imahd] . '*|*' . $value->stendt . $hasExpertise;
            }else {
                $topicArray[$value->pk_imahd] = $value->stendt . $hasExpertise;
            }
        }


        $data['unit_list']        = Unit::all();
        $data['paginatorContent'] = $object->getExpertise($search_data, $this->categoryCouncil);
        $data['page']             = $request->page;
        $data['search_data']      = $search_data;
        return view('deploy.survey.index', compact('data', 'topicArray'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $survey = new Survey();

        $data = array(
            'topic_list' => $survey->getSurveyTopic($status = 2)
        );

        return view('deploy.survey.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ExpertiseRequest $request)
    {
        // Thêm bảng Hội đồng
        $post_data = [
            'iloaihoidong'  => 2,    // Mã HĐ thẩm định
            'stenhd'        => $request->tenhoidong,
            'smahoidong'    => $request->mahoidong,
            'dngaythanhlap' => $request->ngaythanhlap,
            'dngaylamviec'  => $request->ngaylamviec,
            'squyetdinh'    => $request->quyetdinh
        ];

        $expertise = new Expertise();
        $expertise->insert($post_data, $request->choose, 3);

        return redirect()->route('admin.survey.index')->with([
            'flash_level' => 'success',
            'flash_message' => sprintf("Thành lập hội đồng thẩm định thành công.<br>Vui lòng tiến hành <b>cập nhật cán bộ vào hội đồng đã tạo</b> <button class='btn btn-default btn-sm'><i class='fa fa-user-plus'></i></button>")
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
        $survey = new Survey();
        // Đề tài ko chọn lúc thành lập hội đồng
        // Lấy trong bảng hợp đồng và đề tài đó không nằm trong bảng tblhoidong_kehoach
        $data['topic_list'] = $survey->getDeployTopicNotChoose($status = 2);

        // Các đề tài đã chọn lúc thành lập
        $topic = new Expertise();
        $data['topic_edit'] = $topic->getTopciOfCountcil($id);
        $data['expertise'] = Council::findOrFail($id);
        return view('deploy.survey.edit', compact('data'));
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
        /**
         * Cập nhật lại thông tin của hội đồng
         */
        $council = Council::findOrFail($id);
        $council->stenhd        = $request->tenhoidong;
        $council->smahoidong    = $request->mahoidong;
        $council->dngaythanhlap = $request->ngaythanhlap;
        $council->dngaylamviec  = $request->ngaylamviec;
        $council->squyetdinh    = $request->quyetdinh;
        $council->save();

        // Mảng dữ liệu hội đồng kế hoạch mới
        $expertise = new Expertise();
        $topic_data = $request->choose;
        $post_data = $newArray = array();

        if (!empty($topic_data)) {
            foreach ($topic_data AS $topic) {
                $post_data[] = array(
                    'fk_imadt' => $topic,
                    'fk_imahd' => $id
                );

                $newArray[] = $topic;   // Mảng đề tài mới
            }
        }


        // Mảng đề tài cũ đề update
        $topic = new Expertise();
        $old_topic = $topic->getTopciOfCountcil($id);
        $oldArray = array();
        foreach ($old_topic AS $key => $val) {
            $oldArray[] = $val->pk_imadt;
        }

        // Gọi đến phương thức xử lý bên Model
        $topic->updateTopic($id, $post_data, $oldArray, $newArray, 2, 3);
        return redirect()->route('admin.survey.index')->with([
            'flash_level' => 'success',
            'flash_message' => sprintf("Cập nhật hội đồng khảo sát thành công.<br>Vui lòng <b>cập nhật cán bộ vào hội đồng vừa thay đổi.</b> <button class='btn btn-default btn-sm'><i class='fa fa-user-plus'></i></button>")
        ]);
    }
} // End class
