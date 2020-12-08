<?php

namespace App\Http\Controllers\System;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\System\System;

class SystemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = System::all();
        return view('system.index',compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $system = new System();
        $ngaybd = timestamps(substr($request->txtThoigian, 0, 10));
        $ngaykt = timestamps(substr($request->txtThoigian, -10));

        $system->sgiatri = ''.$ngaybd.'-'.$ngaykt;
        $system->stenhethong = $request->txtChucnang;
        $system->save();
        return redirect()->route('admin.system.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thành công'
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
        $data = System::all();
        $system =  System::findOrFail($id);
        return view('system.index',compact('system','data'));

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
        $system = System::findOrFail($id);
        $ngaybd = timestamps(substr($request->txtThoigian, 0, 10));
        $ngaykt = timestamps(substr($request->txtThoigian, -10));

        $system->sgiatri = ''.$ngaybd.'-'.$ngaykt;
        $system->stenhethong = $request->txtChucnang;
        $system->save();
        return redirect()->route('admin.system.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thành công'
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
