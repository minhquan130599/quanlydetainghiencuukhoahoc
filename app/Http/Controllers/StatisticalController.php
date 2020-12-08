<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use App\Category\TopicCategory;
use App\Category\TopicYear;
use App\Statistical;
class StatisticalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $statistical = new Statistical();
        $data['topic_category'] = TopicCategory::all();
        $data['topic_year'] = TopicYear::all();

        // Số lượng đề tài đã nghiệm thu
        $data['arrayNumber'] = statistical_by_criteria($statistical->getStatisticalTopicCategory());
       
        // Số lượng đề tài chưa nghiệm thu
        $data['arrayAcceptanceYet']  = statistical_by_criteria($statistical->getTopicAcceptionYetOrDelay());

        // Số lượng đề tài chậm muộn
        $data['delayArray'] = statistical_by_criteria($statistical->getTopicAcceptionYetOrDelay('delay'));

        // Số lượng đề tài đã bị hủy
        $data['destroyArray'] = statistical_by_criteria($statistical->getDestroyTopic());
        $data['liquidationArray'] = statistical_by_criteria($statistical->getLiquidationTopic());

        // SL đề tài đã nghiệm thu theo năm đề tài
        $data['arrayNumberByYear'] = statistical_by_year($statistical->getStatisticalTopicYear());

        $data['arrayYetByYear']  = statistical_by_year($statistical->getTopicYetOrDelayByYear());
        $data['arrayDelayByYear']  = statistical_by_year($statistical->getTopicYetOrDelayByYear('delay'));
        $data['arrayDestroyByYear']  = statistical_by_year($statistical->getDestroyTopicByYear());
         $data['arrayLiquiByYear'] = statistical_by_year($statistical->getLiquidationByYear());
        return view('statistical', compact('data'));
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
