<?php

namespace App\Http\Controllers\Plan;

use Illuminate\Http\Request;
use App\Plan\Contract;
use App\Plan\Topic;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class ContractController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $contract = new Contract();
        $data = array(
            'keyword'          => $request->keyword,
            'page'             => $request->page,
            'paginatorContent' => $contract->getContract($request->keyword),
            'topic_list'       => $contract->getTopic()
        );
        return view('plan.contract.index', compact('data'));
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
        $post_data = $request->post_data;
      
        if ($request->ajax()) {
            $contract = new Contract();
            $contract->dngaylap = $post_data['dngaylap'];
            $contract->ssohieu  = $post_data['ssohieu'];
            $contract->snguoiky  = $post_data['snguoiky'];
            $contract->sghichu  = $post_data['sghichu'];
            $contract->fk_imadt = $post_data['fk_imadt'];
            $contract->save();

            $topic = Topic::findOrFail($post_data['fk_imadt']);
            $topic->smasodetai = $post_data['smasodetai'];
            $topic->save();

            $request->session()->flash('flash_level', 'success');
            $request->session()->flash('flash_message', 'Tạo hợp đồng mới thành công');
            return 'success';
        }
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
        $contract = new Contract;
        $data = $contract->getResource($id);
        return response()->json($data);
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
        $post_data = $request->post_data;
      
        if ($request->ajax()) {
            $contract = Contract::findOrFail($id);
            $contract->dngaylap = $post_data['dngaylap'];
            $contract->ssohieu  = $post_data['ssohieu'];
            $contract->snguoiky = $post_data['snguoiky'];
            $contract->sghichu  = $post_data['sghichu'];
            $contract->save();

            $topic = Topic::findOrFail($contract->fk_imadt);
            $topic->smasodetai = $post_data['smasodetai'];
            $topic->save();

            $request->session()->flash('flash_level', 'success');
            $request->session()->flash('flash_message', 'Cập nhật thông tin hợp đồng thành công');
            return 'success';
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $contract = Contract::findOrFail($id);
        $contract->delete();
        return redirect()->back()->with([
            'flash_level' => 'success',
            'flash_message' => 'Hủy hợp đồng thành công'
        ]);
    }


    /**
     * Kiểm tra trùng số hiệu
     * @link 
     * @return void
     * @author asus
     **/
    public function check_number(Request $request) 
    {

        $data = Topic::where('smasodetai', $request->txtMaso)
                     ->where('pk_imadt', '<>', $request->topicID)
                     ->count();
        $result = $data == 0 ? true : false;
        return response()->json($result);
    } // End action check_number


    /**
     * Document
     * @link 
     * @return void
     * @author asus
     **/
    public function checkContractNumber(Request $request) 
    {
        $data = Contract::where('ssohieu', $request->txtSohieu)
                        ->where('pk_imahd', '<>', $request->contractID)
                        ->count();
        $result = $data == 0 ? true : false;
        return response()->json($result);
    } // End action checkContractNumber
} // End class
