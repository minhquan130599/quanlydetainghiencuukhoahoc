<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\Plan\ExpertiseRequest;
use App\Deploy\Acceptance;
use App\Plan\Topic;
use App\Plan\Expertise;
use App\Plan\Council;
use App\Category\Unit;
use App\Category\CouncilMember;

class AcceptanceController extends Controller
{
    private $categoryCouncil = 3;
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

        $acceptance = new Acceptance();
        $topic      = $acceptance->getTopic();
        $topicArray = array();
        $object = new Expertise();

        foreach ($topic AS $value)
        {
            $hasExplain = !empty($value->pk_imahddt) ? '<strong> (Đã nghiệm thu)</strong>' : null;
            if (array_key_exists($value->pk_imahd, $topicArray)) {
                $topicArray[$value->pk_imahd] = $topicArray[$value->pk_imahd] . '*|*' . $value->stendt . $hasExplain;
            }else {
                $topicArray[$value->pk_imahd] = $value->stendt . $hasExplain;
            }
        }

        $data['unit_list']        = Unit::all();
        $data['paginatorContent'] = $object->getExpertise($search_data, $this->categoryCouncil);
        $data['page']             = $request->page;
        $data['keyword']          = $request->keyword;
        $data['search_data'] = $search_data;
        return view('deploy.acceptance.index', compact('data', 'topicArray'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['topic_list'] = Topic::where('pk_imatt', 4)
                                   ->select('pk_imadt', 'stendt', 'smasodetai')
                                   ->get();
        return view('deploy.acceptance.create', compact('data'));
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
            'iloaihoidong'  => 3,    // Mã HĐ nghiệm thu
            'stenhd'        => $request->tenhoidong,
            'smahoidong'    => $request->mahoidong,
            'dngaythanhlap' => $request->ngaythanhlap,
            'dngaylamviec'  => $request->ngaylamviec,
            'squyetdinh'    => $request->quyetdinh
        ];

        $acceptance = new Acceptance();
        $acceptance->insert($post_data, $request->choose, 5);

        return redirect()->route('admin.acceptance.create')->with([
            'flash_level'   => 'success',
            'flash_message' => 'Thành lập hội đồng nghiệm thu đề tài thành công'
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
        $topic = new Acceptance();
        $data['topic_list'] = Topic::where('pk_imatt', 4)
                                   ->select('pk_imadt', 'stendt', 'smasodetai')
                                   ->get();
        $data['topic_edit'] = $topic->getTopciOfCouncil($id);
        $data['expertise'] = Council::findOrFail($id);
        return view('deploy.acceptance.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ExpertiseRequest $request, $id)
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
        $topic = new Acceptance();
        $old_topic = $topic->getTopciOfCouncil($id);

        $oldArray = array();
        foreach ($old_topic AS $key => $val) {
            $oldArray[] = $val->pk_imadt;
        }


        // Gọi đến phương thức xử lý bên Model
        $topic->updateTopic($id, $post_data, $oldArray, $newArray, 4, 5);
        return redirect()->route('admin.acceptance.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thông tin hội đồng nghiệm thu đề tài thành công'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
