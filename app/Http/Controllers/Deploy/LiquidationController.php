<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;
use App\Plan\Topic; // Model đề tài
use App\Plan\Expertise; // Model thẩm định (bảng tblhoidong_kehoach)
use App\Plan\Council;
use App\Category\Unit;  // Model lấy đơn vị
use App\Deploy\Survey;  // Model lấy đơn vị
use App\Deploy\Liquidation;
use App\Deploy\Acceptance;
use App\Http\Requests;
use App\Http\Requests\Plan\ExpertiseRequest;
use App\Http\Controllers\Controller;
use DB;

class LiquidationController extends Controller
{
    private $topicStatus = 6;   // Trạng thái đề tài
    private $categoryCouncil = 4; // Mã hội đồng thanh lý

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

        $liquidation = new Liquidation();
        $topic      = $liquidation->getTopic($this->categoryCouncil);

        $topicArray = array();
        $object = new Expertise();	// Lấy dữ liệu hội đồng (tblhoidong)


        foreach ($topic AS $value) {
            // Nếu đã có ngày thanh lý => Đã có nội dung thanh lý
            $hasLiqui = !empty($value->dngaytl) ? '<strong> (Đã thanh lý)</strong>' : null;
            if (array_key_exists($value->pk_imahd, $topicArray)) {
                $topicArray[$value->pk_imahd] = $topicArray[$value->pk_imahd] . '*|*' . $value->stendt . $hasLiqui;
            }else {
                // Chưa có nội dung thanh lý
                $topicArray[$value->pk_imahd] = $value->stendt . $hasLiqui;
            }
        }

        $data['search_data'] = $search_data;
        $data['unit_list']        = Unit::all();
        $data['paginatorContent'] = $object->getExpertise($search_data, $this->categoryCouncil);
        $data['page']             = $request->page;
        $data['keyword']          = $request->keyword;
        return view('deploy.liquidation.index', compact('data', 'topicArray'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    	$data = array(
            'topic_list' => Topic::where('pk_imatt', '<>', 6)
            					->whereIn('pk_imadt', function($query) {
				        			$query->select('fk_imadt')->from('tblhopdong');
				            	})
				            	->select('pk_imadt', 'stendt', 'smasodetai')->get()
        );

        return view('deploy.liquidation.create', compact('data'));
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
            'iloaihoidong'  => $this->categoryCouncil,
            'stenhd'        => $request->tenhoidong,
            'smahoidong'    => $request->mahoidong,
            'dngaythanhlap' => $request->ngaythanhlap,
            'dngaylamviec'  => $request->ngaylamviec,
            'squyetdinh'    => $request->quyetdinh
        ];

        $liquidation = new Liquidation();
        $liquidation->insertLiquidation($post_data, $request->choose, $this->topicStatus);

        return redirect()->route('admin.liquidation.create')->with([
            'flash_level' => 'success',
            'flash_message' => sprintf("Thành lập hội đồng thanh lý thành công.<br>Vui lòng tiến hành <b>cập nhật cán bộ vào hội đồng đã tạo</b> <button class='btn btn-default btn-sm'><i class='fa fa-user-plus'></i></button>")
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
        $topic = new Liquidation();
        $data['topic_list'] = Topic::where('pk_imatt', '<>', 6)
        						   ->whereIn('pk_imadt', function ($query) {
        						   		$query->select('fk_imadt')->from('tblhopdong');
        						   })
                                   ->select('pk_imadt', 'stendt', 'smasodetai')
                                   ->get();
        $data['topic_edit'] = $topic->getTopciOfCouncil($id);
        $data['expertise'] = Council::findOrFail($id);
        return view('deploy.liquidation.edit', compact('data'));
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
        DB::transaction(function () use ($request, $id) {
            try {
                // Cập nhật lại thông tin của hội đồng
                $council = Council::findOrFail($id);
                $council->stenhd        = $request->tenhoidong;
                $council->smahoidong    = $request->mahoidong;
                $council->dngaythanhlap = $request->ngaythanhlap;
                $council->dngaylamviec  = $request->ngaylamviec;
                $council->squyetdinh    = $request->quyetdinh;
                $council->save();

                // Mảng dữ liệu hội đồng kế hoạch mới
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

                // Mảng đề tài, update trạng thái hiện tại về trạng thái cũ
                // trạng thái cũ về NULL
                $topic = new Liquidation();
                $old_topic = $topic->getTopciOfCouncil($id);

                foreach ($old_topic AS $topic)
                {
                    $row = Topic::findOrFail($topic->pk_imadt);
                    $row->pk_imatt   = !empty($topic->pk_imattcu) ? $topic->pk_imattcu : null;
                    $row->pk_imattcu = null;
                    $row->save();
                }

                // Xóa các bản ghi hiện tại trong bảng tblhoidong_detai với mã hội đồng = $id
                // Thêm lại các bản ghi hội đồng kế hoạch
                $liqui = new Liquidation();
                $liqui->updateLiquidation($post_data, $id);


                // Update trạng thái hiện tại của các đề tài được chọn lên 6,
                // Cột trạng thái cũ = trạng thái hiện tại
                $new = Topic::whereIn('pk_imadt', $newArray)
                            ->select('pk_imadt', 'pk_imatt', 'pk_imattcu', 'stendt')
                            ->get()
                            ->toArray();

                if (!empty($new))
                {
                    foreach ($new AS $item)
                    {
                        $row = Topic::findOrFail($item['pk_imadt']);
                        $row->pk_imattcu = $item['pk_imatt'];
                        $row->pk_imatt = 6;
                        $row->save();
                    }
                }
            } catch (Exception $e) {
                return fail_data();
            }
        }); // Transaction

        return redirect()->route('admin.liquidation.index')->with([
            'flash_level' => 'success',
            'flash_message' => sprintf("Cập nhật hội đồng thanh lý thành công.<br>Vui lòng <b>cập nhật cán bộ vào hội đồng vừa thay đổi.</b> <button class='btn btn-default btn-sm'><i class='fa fa-user-plus'></i></button>")
        ]);
    } // End action

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
