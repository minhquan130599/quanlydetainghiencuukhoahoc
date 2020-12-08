<?php

namespace App\Http\Controllers\Category;

use Illuminate\Http\Request;
use App\Category\Unit;
use App\Category\UnitLevel;
use App\Http\Requests\Category\UnitRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class UnitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $unit = new Unit();
        $data = array(
            'paginatorContent' => $unit->getAllUnit($request->keyword),
            'page' => $request->page,
            'keyword' => $request->keyword
        );
        return view('category.unit.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $data = UnitLevel::all();
        return view('category.unit.create',compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UnitRequest $request)
    {
        $unit = new Unit();
        $unit->pk_imacapdv = $request->txtCapdonvi;
        $unit->stendv = $request->txtTendonvi;
        $unit->sdiachi = $request->txtDiachi;
        $unit->sdienthoai = $request->txtSodienthoai;
        $unit->sfax = $request->txtFax;
        $unit->semail = $request->txtEmail;
        $unit->sweb = $request->txtWeb;
        $unit->sdvchuquan = $request->txtDonvichuquan;
        $unit->snguoilienhe = $request->txtNguoilienhe;
        $unit->sghichu = $request->txtGhichu;

        $unit->save();
        return redirect()->route('admin.unit.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Thêm đơn vị thành công'
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
        $data = UnitLevel::all();
        $unit = Unit::findOrFail($id);
        return view('category.unit.edit',compact('unit', 'data'));
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
        $unit = Unit::findOrFail($id);
        $unit->pk_imacapdv = $request->txtCapdonvi;
        $unit->stendv = $request->txtTendonvi;
        $unit->sdiachi = $request->txtDiachi;
        $unit->sdienthoai = $request->txtSodienthoai;
        $unit->sfax = $request->txtFax;
        $unit->semail = $request->txtEmail;
        $unit->sweb = $request->txtWeb;
        $unit->sdvchuquan = $request->txtDonvichuquan;
        $unit->snguoilienhe = $request->txtNguoilienhe;
        $unit->sghichu = $request->txtGhichu;
        $unit->save();
        return redirect()->route('admin.unit.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Sửa đơn vị thành công'
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
