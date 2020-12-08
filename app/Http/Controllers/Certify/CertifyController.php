<?php

namespace App\Http\Controllers\Certify;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Plan\Topic;
use App\Category\Unit;
use App\Certify\Certify;
use DateTime, Mail, File;
class CertifyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $certify = new Certify;
        $data = array(
            'topic_list' => Topic::whereIn('pk_imadt', function ($query) {
                                    $query->select('pk_imadt')->from('tbldetai_thanhly');
                                })->whereNotIn('pk_imadt', function ($query) {
                                    $query->select('pk_imadt')->from('tbldetai_chungnhan');
                                })->select('pk_imadt', 'stendt')->get()->toArray(),
            'keyword' => $request->keyword,
            'paginatorContent' => $certify->getCertify($request->keyword),
            'page' => $request->page,
            'library' => Unit::findOrFail(1) // 1 là đơn vị Thư viện
        );

        return view('certify.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $certify = new Certify;
        $certify->pk_imadt       = $request->input('txtDetai');
        $certify->bquyenbaocao   = $request->input('bBaocao');
        $certify->dngaycapgiaycn = $request->input('dNgaycap');
        $certify->snguoikycn     = $request->input('txtNguoiky');
        $certify->sghichu        = $request->input('txtGhichu');
        $certify->created_at = new DateTime();

        // upload file đó lên server trước
        if (!empty($request->fAttach)) {
            $destinationPath = 'upload/certify/';
            $file_name = sprintf('%s%s%s', $request->input('txtDetai'), strtolower(str_random(10)), $request->fAttach->getClientOriginalName());
            $request->file('fAttach')->move($destinationPath, $file_name);
            $certify->filebanmem = sprintf('%s%s', $destinationPath, $file_name);
        }
       
        $certify->save();
        return redirect()->route('admin.certify.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thông tin chứng nhận thành công'
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
        //
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
        $certify = Certify::findOrFail($id);
        $certify->bquyenbaocao   = $request->input('bBaocao');
        $certify->dngaycapgiaycn = $request->input('dNgaycap');
        $certify->snguoikycn     = $request->input('txtNguoiky');
        $certify->sghichu        = $request->input('txtGhichu');
        $certify->updated_at = new DateTime();

        // upload file đó lên server trước
        if (!empty($request->fAttach)) {
            if (File::exists($certify->filebanmem)) {
                File::delete($certify->filebanmem);
            }

            $destinationPath = 'upload/certify/';
            $file_name = sprintf('%s%s%s', $request->input('txtDetai'), strtolower(str_random(10)), $request->fAttach->getClientOriginalName());
            $request->file('fAttach')->move($destinationPath, $file_name);
            $certify->filebanmem = sprintf('%s%s', $destinationPath, $file_name);
        }
       
        $certify->save();
        return redirect()->route('admin.certify.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thông tin chứng nhận thành công'
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
        $certify = Certify::destroy($id);
        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Hủy chứng nhận đề tài thành công'
        ]);
    }


    /**
     * Gửi email về cho chủ nhiệm thông báo thông tin chứng nhận
     * @param int - $id: Mã đề tài 
     * @return void
     * @author asus
     **/
    public function email(Request $request, $id) 
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
        Mail::send('certify._email', $data, function ($message) use ($request) {
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
        $certify = Certify::findOrFail($id);
        $certify->bsendmail = 1;
        $certify->save();   // Lưu trường đã gửi email

        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Thông báo thông tin chứng nhận cho chủ nhiệm thành công'
        ]);
    } // End action email
} // End class
