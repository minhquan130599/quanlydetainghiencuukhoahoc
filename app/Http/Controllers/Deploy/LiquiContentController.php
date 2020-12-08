<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Deploy\Acceptance;
use App\Deploy\LiquiContent;
use App\Plan\Topic;
use App\Plan\Council;
use DateTime;

class LiquiContentController extends Controller
{
    private $councilCategory = 4; // Hội đồng thanh lý
    private $topicStatus = 6;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $content = new LiquiContent();

        $search_data = array(
            'council'     => $request->council,
            'topic'       => $request->topic,
            'report_date' => $request->report_date
        );

        $data = array(
            'topic_list' => Topic::where('pk_imatt', '=', $this->topicStatus)
                                ->whereNotIn('pk_imadt', function ($query) {
                                    $query->select('pk_imadt')->from('tbldetai_thanhly');
                                })->get(),

            'keyword' => $request->keyword,

            'paginatorContent' => $content->getLiquiContent($search_data, $this->councilCategory),

            'page' => $request->page,
            'council' => Council::where('iloaihoidong', '=', $this->councilCategory)
                                ->select('pk_imahd', 'stenhd')
                                ->take(50)
                                ->orderBy('pk_imahd', 'DESC')
                                ->get()
                                ->toArray(),

            'topic' => Topic::where('pk_imatt', '=', $this->topicStatus)
                            ->select('pk_imadt', 'stendt')
                            ->take(50)
                            ->orderBy('pk_imadt', 'DESC')
                            ->get(),

            'search_data' => $search_data
        );

        return view('deploy.liqui_content.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $content = new LiquiContent();
        $content->pk_imadt = $request->input('txtDetai');
        $content->dngaytl  = $request->input('txtNgaylap');
        $content->slydo    = $request->input('txtLydo');
        $content->sghichu  = $request->input('txtGhichu');
        $content->fk_imahddt = $content->getLiquiCouncil($request->input('txtDetai'));
        $content->created_at = new DateTime();
        $content->updated_at = new DateTime();
        $content->save();

        return redirect()->route('admin.liqui_content.index')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thông tin thanh lý đề tài thành công'
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
        $content = LiquiContent::findOrFail($id);
        $content->dngaytl    = $request->input('txtNgaylap');
        $content->slydo      = $request->input('txtLydo');
        $content->sghichu    = $request->input('txtGhichu');
        $content->updated_at = new DateTime();
        $content->save();

        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thông tin thanh lý đề tài thành công'
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
        $data = LiquiContent::findOrFail($id);
        $data->delete();
        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Hủy thông tin thanh lý đề tài thành công'
        ]);
    }
}
