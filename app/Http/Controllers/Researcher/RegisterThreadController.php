<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Staff\Staff;
use App\Category\Field;
use App\Category\TopicCategory;
use App\Category\Type;
use App\Category\TopicYear;
use App\Category\TopicJoin;
use App\Category\Unit;
use App\System\System;
use App\Http\Requests\Researcher\RegisterThreadRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use Carbon\Carbon;

class RegisterThreadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = array(
            'staff_list'     => Staff::select('pk_smacanbo', 'shodem')->orderBy('sten', 'asc')->get(),
            'topic_field'    => Field::all(),
            'topic_category' => TopicCategory::all(),
            'topic_type'     => Type::all(),
            'topic_year'     => TopicYear::all(),
            'unit_list'        =>Unit::all()
        );
        $time_system = System::select('sgiatri')->where('pk_imahethong',37)->get()->toArray();
        $date = time();
        return view('researcher.registerthread.index', compact('data','time_system','date'));
    }

    public function store(Request $request)
    {
                // Lưu vào bảng đề tài
        $post_data = [
            'stendt'           => $request->txtTenDetai,
            'dngaybd'          => timestamps(substr($request->txtThoigianThuchien, 0, 10)),
            'dngaykt'          => timestamps(substr($request->txtThoigianThuchien, -10)),
            'fcptong'          => $request->txtKinhphi,
            'pk_smaldt'        => $request->txtLoaiDetai,
            'pk_imalv'         => $request->txtLinhvuc,
            'pk_smalh'         => $request->txtLoaihinh,
            'fk_smaloainam'    => $request->txtNamDetai,
            'pk_imatt'         => 1,
            'scapthiet'        => $request->txtCapthiet,
            'smuctieu'         => $request->txtMuctieu,
            'snoidungdaicuong' => $request->txtNoidung,
            'sphuongphap'      => $request->txtPhuongphap,
            'sketcaudetai'     => $request->txtKetcau,
            'ssanpham'         => $request->txtSanpham,
            'sdcungdung'       => $request->txtUngdung,
        ];
        
        
        $topic = new Topic;
        $id = $topic->insertGetId($post_data);
       
        // Lưu vào bảng tham gia đề tài
        $join = new TopicJoin();
        $post  = array(
            'macb' => $request->check,
            'mavt' => $request->selected
            );
        for ($i=0 ,$count = count($post['macb']); $i < $count ; $i++) { 
            $post_update[] = array(
                'pk_imadt' => $id,
                'pk_smacanbo' => $post['macb'][$i],
                'pk_imavt' => $post['mavt'][$i],
                'snguoidangkyho' => $request->txtCanbo
                );
        }
        TopicJoin::insert($post_update);
        $join->pk_imadt       = $id;
        $join->pk_smacanbo    = Auth::user()->pk_smacanbo;
        $join->pk_imavt       = 3;
        $join->save();

        return redirect()->route('researcher.outline')->with([
            'flash_level' => 'success',
            'flash_message' => 'Đăng ký đề tài NCKH thành công'
        ]);
    }

}
