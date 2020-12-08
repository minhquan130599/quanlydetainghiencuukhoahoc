<?php

namespace App\Http\Controllers\Researcher;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Http\Requests;
use App\Deploy\Delay;
use App\VFormModel;
use App\Http\Controllers\Controller;
use Auth,Mail,File;   
class DelayController extends Controller
{
    private $expertise_council_id   = '1';  // Hội đồng thẩm định
    private $survey_council_id      = '2';  // Hội đồng BCTĐ
    private $acceptance_council_id  = '3';  // Hội đồng nghiệm thu
    private $liquidation_council_id = '4';  // Hội đồng thanh lý
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $topic = new Topic;
        $delay = new Delay;
        $macb = Auth::user()->pk_smacanbo;
        $keyword = '';
        $data_giahan = $delay->GetAllDelay($macb);
        $data = $topic->getDeployTopic($keyword, $macb);
        return view('researcher.delay.index', compact('data','data_giahan'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $giahan = new Delay();
        $data = [
            'fk_imadt'   => $request->txtDetai,
            'dngayrahan' => $request->txtTGKTM,
            'lydo'       => $request->txtLydo,
            'noidung'    => $request->txtNoidung,
            'xacnhan' => 0
        ];
        $id = $giahan->InsertGetID($data);

        if ($request->hasFile('txtFile')) {
            $giahan = Delay::findOrFail($id);
            $extension = $request->file('txtFile')->getClientOriginalExtension();
            $destinationPath = 'upload/giahan';
            $request->file('txtFile')->move($destinationPath, $id.$extension);
            $giahan->filedinhkem = sprintf('\\upload\\giahan\\%s', $id .".". $extension);
            $giahan->save();
        }
        return redirect()->route('researcher.delay')->with([
            'flash_level' => 'success',
            'flash_message' => 'Gia hạn đề tài thành công'
        ]);
        

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function form($topicID,$id)
    {
        $form_model = new VFormModel();
        $data = array(
            'topic'     => Topic::where('pk_imadt', $topicID)->first(),
            'leader'    => $form_model->getLeader($topicID),
            'member'    => $form_model->getMembers($topicID),
            'unit'      => $form_model->getUnit($topicID),
            'council'   => $form_model->getCouncilMember($topicID, $this->acceptance_council_id),
            'contract'  => $form_model->getContract($topicID),
            'expertise' => $form_model->getCouncilMember($topicID, $this->expertise_council_id),
            'xeploai' => $form_model->getNghiemthu($topicID),
            'giahan' => Delay::findOrFail($id)
        );
        // pr($data['giahan']);
        return view('form.mau3_hdntdt', compact('data'));
    }
}
