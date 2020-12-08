<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\Business; // quá trình công tác
use Auth, DB;

class BusinessController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('researcher.science.index');
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
        $business = new Business;
        $business->pk_smacanbo     = Auth::user()->pk_smacanbo;
        $business->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $business->smota           = $request->smota;
        $business->sghichu         = $request->sghichu ? $request->sghichu : '';
        $business->save();
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
        $business = DB::table('tblcanbonckh_qtct')
                      ->where('pk_imaqtct', '=', $id)
                      ->select(DB::raw("pk_imaqtct, smota, sghichu, 
                            SUBSTRING(skhoangthoigian, 1, 7) AS dngaybd,
                            RIGHT(skhoangthoigian, 7) AS dngaykt
                        "))
                      ->first();
        return response()->json($business);
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
        $business = Business::findOrFail($id);
        $business->pk_smacanbo     = Auth::user()->pk_smacanbo;
        $business->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $business->smota           = $request->smota;
        $business->sghichu         = $request->sghichu ? $request->sghichu : '';
        $business->save();
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
        $business = Business::findOrFail($id);
        $business->delete();
        return 'success';
    }
}
