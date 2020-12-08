<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;
use App\Certify\Certify;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Auth,File;

class CertifyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $certify = new Certify;
        // $data = $certify->getCertify(Auth::user()->pk_smacanbo);
        //$data = $certify->getCertifyForResearcher();
        $data = $certify->getCertifyForResearcher(Auth::user()->pk_smacanbo);
        //pr(Auth::user()->pk_smacanbo);
        return view('researcher.certify.index', compact('data'));
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
        $certify = Certify::findOrFail($id);
        // upload file đó lên server trước
        if (!empty($request->fAttach)) {
            if (File::exists($certify->filebanmem)) {
                File::delete($certify->filebanmem);
            }
            $destinationPath = 'upload/certify/';
            $file_name = sprintf('%s%s%s', $request->input('txtDetai'), strtolower(str_random(10)), $request->fAttach->getClientOriginalName());
            $request->file('fAttach')->move($destinationPath, $file_name);
            $certify->filebanmem = sprintf('%s%s', $destinationPath, $file_name);
        }
        $certify->save();
        return redirect()->route('researcher.certify')->with([
            'flash_level' => 'success',
            'flash_message' => 'Cập nhật thông tin chứng nhận thành công'
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
