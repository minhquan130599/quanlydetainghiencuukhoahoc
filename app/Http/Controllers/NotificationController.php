<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\System\Notification;
use App\Staff\Staff;

class NotificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $nt = new Notification();
        $canbo = new Staff();
        $data = $nt->getAllNotification();
        $dscanbo = $canbo->getListStaff();
        return view('notification.index',compact('data','dscanbo'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $nt = new Notification();
        $nt->stieude = $request->tieude;
        $nt->snoidung = $request->noidung;
        if($request->nguoinhan == 'all'){
            $nt->snguoinhan = null;
        }else{
            $nt->snguoinhan = $request->nguoinhan;
        }
        $nt->save();
        return redirect()->route('admin.notification.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Gửi thông báo cho cán bộ thành công'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function stored(Request $request,$id)
    {
        $nt = Notification::findOrFail($id);

            if($request->duyet==0){
                $nt->strangthai = 1;
            }else{
                $nt->strangthai=0;
            }
            $nt->save();
        return redirect()->route('admin.notification.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật trạng thái thành công'
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
    public function edit(Request $request)
    {
        $id = $request->id;
        $nt = Notification::findOrFail($id);
        return $nt;
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
        $nt = Notification::findOrFail($id);
        $nt->stieude = $request->tieude;
        $nt->snoidung = $request->noidung;
        if($request->nguoinhan == 'all'){
            $nt->snguoinhan = null;
        }else{
            $nt->snguoinhan = $request->nguoinhan;
        }
        $nt->save();
        return redirect()->route('admin.notification.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thông báo cho cán bộ thành công'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete($id)
    {
        $nt = Notification::destroy($id);
        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Xóa thông báo cho cán bộ thành công'
        ]);
    }
}
