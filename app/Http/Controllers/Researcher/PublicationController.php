<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\Publication;
use Auth, DB;

class PublicationController extends Controller
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
        $publication = new Publication();
        $publication->pk_smacanbo = Auth::user()->pk_smacanbo;
        $publication->stenanpham = $request->stenanpham ? $request->stenanpham : '';
        $publication->snamxuatban = $request->snamxuatban ? $request->snamxuatban : '';
        $publication->sghichu = $request->sghichu ? $request->sghichu : '';
        $publication->save();
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
        $publication = Publication::findOrFail($id)->first();
        return response()->json($publication);
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
        $publication = Publication::findOrFail($id);
        $publication->pk_smacanbo = Auth::user()->pk_smacanbo;
        $publication->stenanpham = $request->stenanpham ? $request->stenanpham : '';
        $publication->snamxuatban = $request->snamxuatban ? $request->snamxuatban : '';
        $publication->sghichu = $request->sghichu ? $request->sghichu : '';
        $publication->save();
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
        $publication = Publication::findOrFail($id);
        $publication->delete();
        return 'success';
    }
}
