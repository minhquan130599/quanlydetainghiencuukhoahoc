<?php

namespace App\Http\Controllers\Category;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category\DocumentCategory;
use App\Category\Document;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $document = new Document;
        $data = array(
            'document_category' => DocumentCategory::all(),
            'document_list' => $document->getDocument()
        );
        return view('category.document.index', compact('data'));
    }

    /**
     * Hiển thị danh sách văn bản cho CBGV
     *
     * @return \Illuminate\Http\Response
     */
    public function showDocument()
    {
        $document = new Document;
        $data = array(
            'document_category' => DocumentCategory::all(),
            'document_list' => $document->getDocument()
        );
        return view('category.document.client', compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $document = new Document;
        $document->pk_imaloaivb = $request->loaivanban;
        $document->ssohieuvb    = $request->sohieu;
        $document->stenlink     = $request->ten_link;
        $document->stomtat      = $request->tomtat;
        $document->scqbanhanh   = $request->coquanbanhanh;
        $document->snguoiky     = $request->nguoiky;
        $document->sngayhieuluc = $request->ngayhieuluc;

        if ($request->hasFile('file')) {
            $destinationPath = 'upload/document';
            $request->file('file')->move($destinationPath,  unique_filename_upload($request->file->getClientOriginalName()));
            $document->slink = sprintf('\\upload\\document\\%s', unique_filename_upload($request->file->getClientOriginalName()));
        }

        $document->save();


        return redirect('admin/document#neo')
                         ->with([
                            'flash_level' => 'success',
                            'flash_message' => 'Cập nhật văn bản, biểu mẫu thành công'
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
        $document = new Document;
        $data = array(
            'document_category' => DocumentCategory::all(),
            'document_list'     => $document->getDocument(),

        );
        $document = Document::findOrFail($id);

        return view('category.document.index', compact('data', 'document'));
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
        $document = Document::findOrFail($id);
        $document->pk_imaloaivb = $request->loaivanban;
        $document->ssohieuvb    = $request->sohieu;
        $document->stenlink     = $request->ten_link;
        $document->stomtat      = $request->tomtat;
        $document->scqbanhanh   = $request->coquanbanhanh;
        $document->snguoiky     = $request->nguoiky;
        $document->sngayhieuluc = $request->ngayhieuluc;

        if ($request->hasFile('file')) {
            $destinationPath = 'upload/document';
            $request->file('file')->move($destinationPath,  unique_filename_upload($request->file->getClientOriginalName()));
            $document->slink = sprintf('\\upload\\document\\%s', unique_filename_upload($request->file->getClientOriginalName()));
        }

        $document->save();


        return redirect('admin/document#neo')
                         ->with([
                            'flash_level' => 'success',
                            'flash_message' => 'Cập nhật văn bản, biểu mẫu thành công'
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
        $document = Document::findOrFail($id);
        $document->delete();
        return redirect('admin/document#neo')
                         ->with([
                            'flash_level' => 'success',
                            'flash_message' => 'Xóa văn bản, biểu mẫu thành công'
                        ]);
    }
}
