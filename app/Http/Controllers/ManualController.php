<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Manual;
use App\Category\StaffGroup;
use Auth;

class ManualController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($manual = null)
    {
        $m = new Manual;
        $list_chapter = $m->getManual();
        $staff_group = StaffGroup::all();
        return view('manual.create', compact('list_chapter', 'staff_group', 'manual'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $manual = new Manual;
        $manual->stenphanhe = $request->TxtPhanHe;
        $manual->smota = $request->TxtMota;
        $manual->snoidung = $request->TxtNoidung;
        $manual->pk_imanhomcb = $request->TxtNhomCanbo;
        $manual->save();

        return redirect()->route('development.manual.create')
                        ->with([
                            'flash_level' => 'success',
                            'flash_message' => 'Cập nhật nội dung hướng dẫn sử dụng thành công'
                        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id = null)
    {
        $manual = new Manual();

        $documentation = $manual->getManual(Auth::user()->pk_imanhomcb);
        return view('manual.show', compact('documentation', 'id'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $manual = Manual::findOrFail($id);
        return $this->create($manual);
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
        $manual = Manual::findOrFail($id);
        $manual->stenphanhe = $request->TxtPhanHe;
        $manual->smota = $request->TxtMota;
        $manual->snoidung = $request->TxtNoidung;
        $manual->pk_imanhomcb = $request->TxtNhomCanbo;
        $manual->save();

        return redirect()->route('development.manual.create')
                        ->with([
                            'flash_level' => 'success',
                            'flash_message' => 'Cập nhật nội dung hướng dẫn sử dụng thành công'
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
