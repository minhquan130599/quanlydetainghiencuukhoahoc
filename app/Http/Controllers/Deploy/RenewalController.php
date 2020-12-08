<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Deploy\Delay;
use DB;

class RenewalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $delay = new Delay();
        $data = $delay->GetAllRenewal();
         // pr($data);
        return view('deploy.renewal.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->updatetrangthai;
        $delay = Delay::findOrFail($id);
        if(!empty($delay)){
            if($delay->xacnhan == 0){
                $delay->xacnhan = 1;
            }else{
                $delay->xacnhan = 0;
            }
            $delay->save();    
        }
        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thành công'
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
        $delay = new Delay();
        $data_topic = $delay->GetInfo($id);
        // pr($data_topic);
        $data =DB::table('tbldetai_giahan')->select('*')->where('fk_imadt',$id)->get();
        // pr($data);
        return view('deploy.renewal.show',compact('data','data_topic'));
    }

}
