<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\Work;
use Auth, DB;

class WorkController extends Controller
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
        $work = new Work;
        $work->pk_smacanbo     = Auth::user()->pk_smacanbo;
        $work->stencongtrinh   = $request->stencongtrinh;
        $work->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $work->svitricongviec  = $request->svitricongviec;
        $work->ssanpham        = $request->ssanpham;
        $work->sghichu         = $request->sghichu;
        $work->save();
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
        $work = DB::table('tblcanbonckh_ctdt')
                      ->where('pk_imactdt', '=', $id)
                      ->select(DB::raw("pk_imactdt, stencongtrinh, svitricongviec, ssanpham, sghichu, 
                            SUBSTRING(skhoangthoigian, 1, 7) AS dngaybd,
                            RIGHT(skhoangthoigian, 7) AS dngaykt
                        "))
                      ->first();
        return response()->json($work);
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
        $work = Work::findOrFail($id);
        $work->pk_smacanbo     = Auth::user()->pk_smacanbo;
        $work->stencongtrinh   = $request->stencongtrinh;
        $work->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $work->svitricongviec  = $request->svitricongviec;
        $work->ssanpham        = $request->ssanpham;
        $work->sghichu         = $request->sghichu;
        $work->save();
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
        $work = Work::findOrFail($id);
        $work->delete();
        return 'success';
    }
}
