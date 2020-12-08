<?php

namespace App\Http\Controllers\Category;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\TopicCategory;

class TopicCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data =  TopicCategory::all();
        return view('category.topiccategory.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $topiccategory = new TopicCategory();
        $topiccategory->pk_smaldt = $topiccategory->getNextID();
        $topiccategory->stenldt = $request->tenloaidetai;
        $topiccategory->sghichu = $request->ghichu;
        $topiccategory->save();
        return redirect()->route('admin.topiccategory.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Thêm loại đề tài thành công'
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
        $data = TopicCategory::all();
        $tpc = TopicCategory::findOrFail($id);
        return view('category.topiccategory.index',compact('data','tpc'));
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
        $tpc = TopicCategory::findOrFail($id);
        $tpc->stenldt = $request->tenloaidetai;
        $tpc->sghichu = $request->ghichu;
        $tpc->save();
        return redirect()->route('admin.topiccategory.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật loại đề tài thành công'
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
        $tpc = TopicCategory::destroy($id);
        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Xóa loại đề tài thành công'
        ]);
    }
}
