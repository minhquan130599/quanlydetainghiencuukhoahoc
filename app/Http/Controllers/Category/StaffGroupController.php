<?php

namespace App\Http\Controllers\Category;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\StaffGroup;

class StaffGroupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = StaffGroup::all();
        return view('category.staffgroup.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $staffgroup = new StaffGroup();
        $staffgroup->stennhomcb = $request->tennhomcanbo;
        $staffgroup->smota = $request->mota;
        $staffgroup->save();
        return redirect()->route('admin.staffgroup.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Thêm nhóm cán bộ thành công'
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = StaffGroup::all();
        $staffgroup = StaffGroup::findOrFail($id);
        return view('category.staffgroup.index',compact('data','staffgroup'));
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
        $staffgroup = StaffGroup::findOrFail($id);
        $staffgroup->stennhomcb = $request->tennhomcanbo;
        $staffgroup->smota = $request->mota;
        $staffgroup->save();
        return redirect()->route('admin.staffgroup.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật nhóm cán bộ thành công'
        ]);
    }
}
