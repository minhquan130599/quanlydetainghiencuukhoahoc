<?php

namespace App\Http\Controllers\Plan;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Staff\Staff;
use App\Category\Field;
use App\Category\TopicCategory;
use App\Category\Type;
use App\Category\Unit;
use App\Category\TopicYear;
use App\Category\TopicJoin;
use App\Http\Requests;
use App\Http\Requests\Plan\TopicRequest;
use App\Http\Controllers\Controller;
use Mail;
class TopicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $topic = new Topic();
        $search_data = array(
            'keyword'        => trim($request->keyword),
            'specialize'     => $request->specialize,
            'staff'          => $request->staff,
            'topic_year'     => $request->topic_year,
            'topic_category' => $request->topic_category,
            'expense'        => $request->expense
        ); // Mảng dữ liệu tìm kiếm

        $data = array(
            'paginatorContent' => $topic->getTopicRegister($search_data),
            'page'             => $request->page,
            'keyword'          => $request->keyword,
            'topic_field'      => Field::all(),
            'topic_category'   => TopicCategory::all(),
            'topic_type'       => Type::all(),
            'topic_year'       => TopicYear::all(),
            'staff_list'       => Staff::select('pk_smacanbo', 'shodem')->orderBy('sten', 'asc')->get(),
            'unit_list'        =>Unit::all()
        );
        return view('plan.topic.index', compact('data', 'search_data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = array(
            'staff_list'     => Staff::select('pk_smacanbo', 'shodem')->orderBy('sten', 'asc')->get(),
            'topic_field'    => Field::all(),
            'topic_category' => TopicCategory::all(),
            'topic_type'     => Type::all(),
            'topic_year'     => TopicYear::all(),
            'unit_list'        =>Unit::all()
        );

        return view('plan.topic.create', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Lưu vào bảng đề tài
        $post_data = [
            'stendt'           => trim($request->txtTenDetai),
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
            'ssanpham'         => $request->txtSanpham
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
        $join->pk_smacanbo    = $request->txtChunhiem;
        $join->pk_imavt       = 3;
        $join->snguoidangkyho = $request->txtCanbo;
        $join->save();


        return redirect()->route('admin.topic.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Đăng ký đề tài NCKH thành công'
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
        $join = new TopicJoin();
        $data = array(
            'staff_list'     => Staff::select('pk_smacanbo', 'shodem')->orderBy('sten', 'asc')->get(),
            'topic_field'    => Field::all(),
            'topic_category' => TopicCategory::all(),
            'topic_type'     => Type::all(),
            'topic_year'     => TopicYear::all(),
            'unit_list'      => Unit::all()
        );
        $data_join = $join -> getTopicJoin($id);
        // pr($data_join);
        $topic = Topic::findOrFail($id);
        $topic_join = TopicJoin::where('pk_imavt', 3)->where('pk_imadt', $id)->first();
        return view('plan.topic.edit', compact('data', 'topic', 'topic_join','data_join'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(TopicRequest $request, $id)
    {
        // Cập nhật đề tài
        $topic = Topic::findOrFail($id);
        $topic->stendt           = $request->txtTenDetai;
        $topic->dngaybd          = timestamps(substr($request->txtThoigianThuchien, 0, 10));
        $topic->dngaykt          = timestamps(substr($request->txtThoigianThuchien, -10));
        $topic->fcptong          = $request->txtKinhphi;
        $topic->pk_smaldt        = $request->txtLoaiDetai;
        $topic->pk_imalv         = $request->txtLinhvuc;
        $topic->pk_smalh         = $request->txtLoaihinh;
        $topic->fk_smaloainam    = $request->txtNamDetai;
        $topic->pk_imatt         = 1;
        $topic->scapthiet        = $request->txtCapthiet;
        $topic->smuctieu         = $request->txtMuctieu;
        $topic->snoidungdaicuong = $request->txtNoidung;
        $topic->sphuongphap      = $request->txtPhuongphap;
        $topic->sketcaudetai     = $request->txtKetcau;
        $topic->ssanpham         = $request->txtSanpham;
        $topic->sdcungdung       = $request->txtUngdung;
        $topic->save();

        /**
         * Cập nhật chủ nhiệm, người đăng ký hộ
         * Xóa dữ liệu cũ đi
         * Chèn dữ liệu mới vào
         */
        $join = TopicJoin::findOrFail($id);
        $join->delete();

        $join = new TopicJoin();
        $join->pk_imadt       = $id;
        $join->pk_smacanbo    = $request->txtChunhiem;
        $join->pk_imavt       = 3;
        $join->snguoidangkyho = $request->txtCanbo;
        $join->save();

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

        return redirect()->route('admin.topic.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật đăng ký đề tài NCKH thành công'
        ]);
    }


    /**
     * Hủy đề tài đăng ký nếu cảm thấy đề tài ko hợp lệ
     * Email về cho chủ nhiệm
     * @param int ($id): Mã đề tài
     * @return void
     * @author asus
     **/
    public function notify(Request $request, $id)
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
        Mail::send('plan.topic._email', $data, function ($message) use ($request) {
            $message->from('quanlykhoahoc2016@gmail.com', 'Hệ thống quản lý khoa học');
            $message->to($request->txtEmail);
            $message->subject($request->txtTitle);

            if (!empty ($request->fAttach)) {
                $file_path  = 'upload/file_send_email/' . $request->fAttach->getClientOriginalName();
                $attachment = public_path($file_path);
                $message->attach($attachment);
            }
        }, true);

        // Update trạng thái đã gửi email
        $content = Topic::findOrFail($id);
        $content->bsendmail = 1;
        $content->save();   // Lưu trường đã gửi email

        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Gửi email thông báo cho chủ nhiệm thành công'
        ]);
    } // End action notify


    /**
     * Hủy đề xuất đề tài. Đưa về trạng thái hủy
     * @param (int) $id: Mã đề tài
     * @return void
     * @author asus
     **/
    public function destroy(Request $request, $id)
    {
        $topic = Topic::findOrFail($id);
        $topic->pk_imatt = 7;
        $topic->save();
        $data = array('topic' => $topic);

        // Gửi email cho user
        Mail::send('plan.topic.destroy', $data, function ($message) use ($request) {
            $message->from('quanlykhoahoc2016@gmail.com', 'Hệ thống hỗ trợ quản lý nghiên cứu khoa học');
            $message->to($request->input('destroy'));
            $message->subject('Thông báo hủy đề tài khoa học đã đề xuất');
        });

        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Hủy đề tài thành công! <br>Email đã được gửi tự động cho chủ nhiệm đề tài'
        ]);
    } // End action destroy
} // End class
