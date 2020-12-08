<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Staff\Staff;
use App\Plan\Topic;
use DB;

class SearchController extends Controller
{
    private $avatar = '\\\upload\\\avatar\\\noavatar.gif';
    private $leader = 3;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $keyword = trim($request->term);
        $data = Staff::where('shodem', 'LIKE', '%'.$keyword.'%')
                    ->orWhere('sdienthoai', 'LIKE', '%'.$keyword.'%')
                    ->orWhere('semail', 'LIKE', '%'.$keyword.'%')
                     ->select(DB::raw("
                        IF(sanh = '', '{$this->avatar}', sanh) AS image,
                        CONCAT(sdienthoai, ' - ', semail) AS info,
                        shodem AS value, CONCAT('/admin/staff/show/', pk_smacanbo) AS url"
                    ))->get()
                      ->toArray();


        if (!count($data))
        {

            $data = DB::table('tbldetai AS dt')
                        ->join('tblthamgiadetai AS tgdt', 'tgdt.pk_imadt', '=', 'dt.pk_imadt')
                        ->join('tblcanbo AS cb', 'cb.pk_smacanbo', '=', 'tgdt.pk_smacanbo')
                        ->join('tblloaidetai AS ldt', 'ldt.pk_smaldt', '=', 'dt.pk_smaldt')
                        ->where('dt.stendt', 'LIKE', '%'.$keyword.'%')
                        ->where('tgdt.pk_imavt', '=', $this->leader)
                        ->whereIn('dt.pk_imadt', function ($query) {
                            $query->select('fk_imadt')
                                  ->from('tblhopdong');
                        })
                        ->select(DB::raw("
                            '{$this->avatar}' AS image,
                            dt.stendt AS value, CONCAT('/admin/deploy/show/', dt.pk_imadt) AS url,
                            CONCAT(ldt.stenldt, ' - Chủ nhiệm: ', cb.shocvan) AS info
                        "))
                        ->get();

        }

        return response()->json($data);
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
        //
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
