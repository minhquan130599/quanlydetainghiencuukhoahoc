<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Plan\Topic;
use App\Deploy\Delay;
use DateTime, Mail, File;

class DelayController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $topic = new Topic;
        $data = $topic->getDelayTopic();
        return view('deploy.delay.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
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


        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Thông báo thông tin chậm muộn đề tài cho chủ nhiệm thành công'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $delay = new Delay();
        $post_data = array(
            'fk_imadt' => $request->choose,
            'dngayrahan' => $request->txtThoigianRahan
        );


        for ($i=0, $count = count($post_data['fk_imadt']); $i < $count; $i++)
        {
            $inset_data[] = array(
                'fk_imadt' => $post_data['fk_imadt'][$i],
                'dngayrahan' => timestamps($post_data['dngayrahan'][$i]),
            );
        }

        Delay::insert($inset_data);
        $delay->updateExtension($inset_data);
        return redirect()->route('admin.delay.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật gia hạn thành công'
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
        //
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
