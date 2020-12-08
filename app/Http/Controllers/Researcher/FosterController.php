<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\Foster;
use Auth, DB;

class FosterController extends Controller
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
        $foster = new Foster;
        $foster->pk_smacanbo     = Auth::user()->pk_smacanbo;
        $foster->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $foster->skhoahoc        = $request->skhoahoc ? $request->skhoahoc : '';
        $foster->shinhthuc       = $request->shinhthuc ? $request->shinhthuc : '';
        $foster->schungchi       = $request->schungchi ? $request->schungchi : '';
        $foster->sghichu         = $request->sghichu ? $request->sghichu : '';
        $foster->save();
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
        $foster = DB::table('tblcanbonckh_qtbd')
                      ->where('pk_imaqtbd', '=', $id)
                      ->select(DB::raw("pk_imaqtbd, skhoahoc, shinhthuc, schungchi, sghichu, 
                            SUBSTRING(skhoangthoigian, 1, 7) AS dngaybd,
                            RIGHT(skhoangthoigian, 7) AS dngaykt
                        "))
                      ->first();
        return response()->json($foster);
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
        $foster = Foster::findOrFail($id);
        $foster->pk_smacanbo     = Auth::user()->pk_smacanbo;
        $foster->skhoangthoigian = sprintf('%s - %s', $request->dngaybd, $request->dngaykt);
        $foster->skhoahoc        = $request->skhoahoc ? $request->skhoahoc : '';
        $foster->shinhthuc       = $request->shinhthuc ? $request->shinhthuc : '';
        $foster->schungchi       = $request->schungchi ? $request->schungchi : '';
        $foster->sghichu         = $request->sghichu ? $request->sghichu : '';
        $foster->save();
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
        $foster = Foster::findOrFail($id);
        $foster->delete();
        return 'success';
    }
}
