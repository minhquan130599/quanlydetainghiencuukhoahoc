<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Staff\Staff;
use App\Category\Field;
use App\Category\TopicCategory;
use App\Category\Type;
use App\Category\TopicYear;
use App\Category\TopicJoin;
use App\Category\Unit;
use App\Http\Requests\Researcher\OutlineRequest;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth, Crypt;
use Illuminate\Contracts\Encryption\DecryptException;
class OutlineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $outline = new Topic();
        $macb = Auth::user()->pk_smacanbo;
        $data = array(
            'paginatorContent' => $outline->GetAllTopic($request->keyword,$macb),
            'page' => $request->page,
            'keyword' => $request->keyword,
        );
        
        return view('researcher.outline.index', compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $join = new TopicJoin();
        $data = array(
                'outline_field'    => Field::all(),
                'outline_category' => TopicCategory::all(),
                'outline_type'     => Type::all(),
                'outline_year'     => TopicYear::all(),
                'unit_list'        =>Unit::all()
            );
        $data_join = $join -> getTopicJoin($id);
        $outline = Topic::findOrFail($id);
        $topic_join = TopicJoin::where('pk_imavt', 3)->where('pk_imadt', $id)->first();
        return view('researcher.outline.edit',compact('data', 'outline', 'topic_join','data_join'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(OutlineRequest $request, $id)
    {
        // $post  = array(
        //     'macb' => $request->check,
        //     'mavt' => $request->selected
        //     );

        // for ($i=0 ,$count = count($post['macb']); $i < $count ; $i++) { 
        //     $post_update[] = array(
        //         'pk_imadt' => $id,
        //         'pk_smacanbo' => $post['macb'][$i],
        //         'pk_imavt' => $post['mavt'][$i],
        //         'snguoidangkyho' => $request->txtCanbo
        //         );
        // }
        // pr($post_update);
        $outline = Topic::findOrFail($id);
        $outline->stendt           = $request->txtTenDetai;
        $outline->dngaybd          = timestamps(substr($request->txtThoigianThuchien, 0, 10));
        $outline->dngaykt          = timestamps(substr($request->txtThoigianThuchien, -10));
        $outline->fcptong          = $request->txtKinhphi;
        $outline->pk_smaldt        = $request->txtLoaiDetai;
        $outline->pk_imalv         = $request->txtLinhvuc;
        $outline->pk_smalh         = $request->txtLoaihinh;
        $outline->fk_smaloainam    = $request->txtNamDetai;
        $outline->pk_imatt         = 1;
        $outline->scapthiet        = $request->txtCapthiet;
        $outline->smuctieu         = $request->txtMuctieu;
        $outline->snoidungdaicuong = $request->txtNoidung;
        $outline->sphuongphap      = $request->txtPhuongphap;
        $outline->sketcaudetai     = $request->txtKetcau;
        $outline->ssanpham         = $request->txtSanpham;
        $outline->sdcungdung       = $request->txtUngdung;
        $outline->save();

        $join = TopicJoin::findOrFail($id);
        $join->delete();

        $join = new TopicJoin();
        $join->pk_imadt       = $id;
        $join->pk_smacanbo    = Auth::user()->pk_smacanbo;
        $join->pk_imavt       = 3;
        $join->snguoidangkyho = Auth::user()->shodem;
        $join->save();

        $post  = array(
            'macb' => $request->check,
            'mavt' => $request->selected
            );

        for ($i=0 ,$count = count($post['macb']); $i < $count ; $i++) { 
            $post_update[] = array(
                'pk_imadt' => $id,
                'pk_smacanbo' => $post['macb'][$i],
                'pk_imavt' => $post['mavt'][$i],
                'snguoidangkyho' => $request->txtCanbo
                );
        }
        TopicJoin::insert($post_update);
        return redirect()->route('researcher.outline')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật đăng ký đề tài NCKH thành công'
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
