<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Deploy\Survey;
use App\Deploy\RegistrationProtect;
use App\Plan\Topic;
use Auth, DateTime, Mail, DB;
class RegistrationController extends Controller
{
    private $topicStatus = 4;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $survey = new Survey();
        $rp     = new RegistrationProtect();
        $data = array(
            'registration'     => $survey->getConditionTopic(2, 1,Auth::user()->pk_smacanbo),
            'paginatorContent' => $rp->getRegistration($request->keyword),
            'page'             => $request->page,
            'keyword'          => $request->keyword
        );
        $registration = $survey->getConditionTopicForUser(2, 1,Auth::user()->pk_smacanbo);
        return view('researcher.registration.index',compact('data','registration'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        DB::transaction(function () use ($request) {
            $registration = new RegistrationProtect();
            $post_data    = $request->input('check');
            $insert_data  = array();
            foreach ($post_data AS $key => $val)
            {
                $insert_data[] = array(
                    'fk_imadt'    => $val,
                    'nguoidangky' => Auth::user()->shocvan,
                    'created_at'  => new DateTime()
                );
            }
            try {
                // Cập nhật đề tài về trạng thái đăng ký bảo vệ
                $topic = Topic::whereIn('pk_imadt', $post_data)
                              ->update(['pk_imatt' => $this->topicStatus]);

                // Chèn dữ liệu vào bảng đăng ký
                RegistrationProtect::insert($insert_data);

                // Gửi email cho các chủ nhiệm thông báo đề tài đã đăng ký bảo vệ thành công
                $email_data = $registration->getLeader($post_data);

                Mail::send('deploy.registration_protect.email', $email_data, function ($message) use ($email_data) {
                    $message->from('quanlykhoahoc2016@gmail.com', 'Hệ thống quản lý khoa học');
                    $message->to($email_data['first']);
                    if (!empty($email_data['bcc']))
                    {
                        foreach ($email_data['bcc'] as $e) {
                            $message->bcc($e);
                        }
                    }
                    $message->subject('Thông báo kết quả đăng ký bảo vệ đề tài khoa học');
                    $message->priority(3);
                });
            } catch (\Exception $e) {
                return redirect()->route('app.errors.fail_data');
                exit;
            }
        }); // End transaction

        return redirect()->route('researcher.registration')->with([
            'flash_level' => 'success',
            'flash_message' => 'Đăng ký bảo vệ đề tài thành công'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
}
