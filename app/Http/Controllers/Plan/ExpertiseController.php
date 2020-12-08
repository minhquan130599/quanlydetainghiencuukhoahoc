<?php

namespace App\Http\Controllers\Plan;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Plan\Expertise;
use App\Plan\Council;
use App\Category\Unit;
use App\Category\CouncilMember;
use App\Http\Requests;
use App\Http\Requests\Plan\ExpertiseRequest;
use App\Http\Controllers\Controller;

class ExpertiseController extends Controller
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
        // Mảng tìm kiếm theo tiêu chí
        $search_data = array(
            'criteria' => $request->criteria,
            'keyword'  => trim($request->keyword)
        );

        $object     = new Expertise();
        $topic      = $object->getTopic($this->categoryCouncil);
        $topicArray = array();

        foreach ($topic AS $value) {
            $hasExpertise = !empty($value->fk_imahdkh) ? '<strong> (Đã thẩm định)</strong>' : null;
            if (array_key_exists($value->pk_imahd, $topicArray)) {
                $topicArray[$value->pk_imahd] = $topicArray[$value->pk_imahd] . '*|*' . $value->stendt . $hasExpertise;
            }else {
                $topicArray[$value->pk_imahd] = $value->stendt . $hasExpertise;
            }
        }


        $data['unit_list']        = Unit::all();
        $data['paginatorContent'] = $object->getExpertise($search_data, $this->categoryCouncil);
        $data['page']             = $request->page;
        $data['keyword']          = $request->keyword;
        $data['topic_list']       = Topic::where('pk_imatt', $this->topicStatus)
                                         ->select('pk_imadt', 'stendt')
                                         ->get();
        $data['search_data'] = $search_data;
        return view('plan.expertise.index', compact('data', 'topicArray'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['topic_list'] = Topic::where('pk_imatt', 1)->select('pk_imadt', 'stendt')->get();
        return view('plan.expertise.create', compact('data'));
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
            'iloaihoidong'  => 1,    // Mã HĐ thẩm định
            'stenhd'        => $request->tenhoidong,
            'smahoidong'    => $request->mahoidong,
            'dngaythanhlap' => $request->ngaythanhlap,
            'dngaylamviec'  => $request->ngaylamviec,
            'squyetdinh'    => $request->quyetdinh
        ];

        $expertise = new Expertise();
        $expertise->insert($post_data, $request->choose, 2);

        return redirect()->route('admin.expertise.index')->with([
            'flash_level' => 'success',
            'flash_message' => sprintf("Thành lập hội đồng thẩm định thành công.<br>Vui lòng sử dụng chức năng <b> \"cập nhật cán bộ vào hội đồng\"</b> đã tạo<button class='btn btn-default btn-sm'><span class='glyphicon glyphicon-user'></span></button>")
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
        $topic = new Expertise();

        $data['topic_list'] = Topic::where('pk_imatt', 1)->select('pk_imadt', 'stendt')->get();
        $data['topic_edit'] = $topic->getTopciOfCountcil($id);
        $data['expertise'] = Council::findOrFail($id);
        return view('plan.expertise.edit', compact('data'));
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
        $topic = new Expertise();
        $old_topic = $topic->getTopciOfCountcil($id);
        $oldArray = array();
        foreach ($old_topic AS $key => $val) {
            $oldArray[] = $val->pk_imadt;
        }

        // Gọi đến phương thức xử lý bên Model
        $topic->updateTopic($id, $post_data, $oldArray, $newArray, 1, 2);
        return redirect()->route('admin.expertise.index')->with([
            'flash_level' => 'success',
            'flash_message' => sprintf("Cập nhật hội đồng thẩm định thành công.<br>Vui lòng sử dụng chức năng <b> \"cập nhật cán bộ vào hội đồng\"</b> vừa thay đổi. <button class='btn btn-default btn-sm'><span class='glyphicon glyphicon-user'></span></button>")
        ]);
    }


    /**
     * Cập nhật thành viên của hội đồng
     * @param []    $post_data: Mảng dữ liệu thành viên hội đồng
     * @param (int) $councilID: Mã hội đồng
     * @return void
     * @author asus
     **/
    public function update_member(Request $request)
    {
        $post_data = $request->post_data;
        $councilID = $request->councilID;

        CouncilMember::where('fk_imahd', $councilID)->delete(); // Xóa bản ghi có mã hội đồng là $councilID
        CouncilMember::insert($post_data);  // Chèn lại dữ liệu mới
        return 'success';
    } // End action update_member


    /**
     * Lấy ra các thành viên của hội đồng kèm vai trò của họ
     * @link
     * @return void
     * @author asus
     **/
    public function member(Request $request)
    {
        if ($request->ajax()) {
            $council_member = new CouncilMember;
            $data  = $council_member->getMember($request->id);
            return response()->json($data);
        }
        return redirect()->route('default');
    } // End action member
} // End class
