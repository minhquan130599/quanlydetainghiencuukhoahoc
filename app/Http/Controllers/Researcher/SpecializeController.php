<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\SpecializeProcess;
use Auth, DB;
class SpecializeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $specialize = new SpecializeProcess;
        $specialize->pk_smacanbo = Auth::user()->pk_smacanbo;
        $specialize->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $specialize->stentruong = $request->stentruong;
        $specialize->schuyennganhdaotao = $request->schuyennganhdaotao;
        $specialize->shinhthucdaotao = $request->shinhthucdaotao;
        $specialize->svanbang = $request->svanbang ? $request->svanbang : '';
        $specialize->sghichu = $request->sghichu ? $request->sghichu : '';
        $specialize->save();
        return 'success';
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
        $specialize = DB::table('tblcanbonckh_qtcm')
                      ->where('pk_imaqtcm', '=', $id)
                      ->select(DB::raw("pk_imaqtcm, stentruong, schuyennganhdaotao, 
                            shinhthucdaotao, svanbang, sghichu,
                            SUBSTRING(skhoangthoigian, 1, 7) AS dngaybd,
                            RIGHT(skhoangthoigian, 7) AS dngaykt
                        "))
                      ->first();
        return response()->json($specialize);
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
        $specialize = SpecializeProcess::findOrFail($id);
        $specialize->pk_smacanbo = Auth::user()->pk_smacanbo;
        $specialize->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $specialize->stentruong = $request->stentruong;
        $specialize->schuyennganhdaotao = $request->schuyennganhdaotao;
        $specialize->shinhthucdaotao = $request->shinhthucdaotao;
        $specialize->svanbang = $request->svanbang ? $request->svanbang : '';
        $specialize->sghichu = $request->sghichu ? $request->sghichu : '';
        $specialize->save();
        return 'success';
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $specialize = SpecializeProcess::findOrFail($id);
        $specialize->delete();
        return 'success';
    }
}
