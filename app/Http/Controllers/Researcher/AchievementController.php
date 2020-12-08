<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;
use App\Staff\StaffInfo;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth;
use DB;

class AchievementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::user()->pk_smacanbo;
        $data = StaffInfo::where('pk_smacanbo', '=', $id)->first();
        if(empty($data)){
            $achievement = new StaffInfo();
            $achievement->pk_smacanbo = $id;
            $achievement->save();
            return redirect()->route('researcher.achievement');
        }
        else{
            return view ('researcher/achievement/index',compact('data'));
        }
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $achievement = StaffInfo::findOrFail(Auth::user()->pk_smacanbo);
        $achievement->schucvu = $request->txtChucvu;
        $achievement->slyluanchinhtri = $request->txtLyluan;
        $achievement->sdanhhieu = $request->txtDanhhieu;
        $achievement->skhenthuong = $request->txtKhenthuong;
        $achievement->snangluc = $request->txtNangluc;
        $achievement->sthanhtuukh = $request->txtThanhtuu;
        $achievement->sghichuthem = $request->txtGhichuthem;

        $achievement->save();
        return redirect()->route('researcher.achievement')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật hồ sơ cán bộ thành công'
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
