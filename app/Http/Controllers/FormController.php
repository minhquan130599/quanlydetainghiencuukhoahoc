<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Category\TopicCategory;
use App\Plan\Topic;
use App\FormModel;
use App\VFormModel;
use App\Plan\ExpertiseContent;

class FormController extends Controller
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
    public function index(Request $request)
    {
        $data['topic_category'] = TopicCategory::all()->toArray();
        return view('form.form', compact('data'));
    }

    /**
     * Lấy các đề tài thuộc loại đè tài
     *
     * @return \Illuminate\Http\Response
     */
    public function get(Request $request)
    {
        $topic_category_id = $request->topic_category_id;
        $data = Topic::where('pk_smaldt', $topic_category_id)
                     ->whereIn('pk_imadt', function ($query) {
                        $query->select('fk_imadt')->from('tblhopdong');
                    })->select('pk_imadt', 'stendt')->get()->toArray();
        return response()->json($data);
    }


    /**
     * Lấy trạng thái của đề tài
     * @param  Request $request [description]
     * @param  [type]  $id      [description]
     * @return [type]           [description]
     */
    public function getStatus(Request $request)
    {
        $form = new FormModel();
        $data = $form->getStatus($request->topicID);
        return response()->json($data);
    }

    /**
     * Phiếu đăng ký đề tài NCKH của giảng viên
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function showPhieuDangKy(Request $request, $topicID)
    {
        $form_model = new VFormModel();

        $data = array(
            'topic'  => Topic::where('pk_imadt', $topicID)->first(),
            'leader' => $form_model->getLeader($topicID),
            'member' => $form_model->getMembers($topicID),
            'unit' => $form_model->getUnit($topicID)
        );
        // pr($data['member']);
        return view('form.phieudangky', compact('data'));
    }


    /**
     * Biên bản họp hội đồng thẩm định đề cương đề tài NCKH cấp cơ sở
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showBienbanHopHdTd($topicID)
    {
        $form_model = new VFormModel();

        $data = array(
            'topic'  => Topic::where('pk_imadt', $topicID)->first(),
            'leader' => $form_model->getLeader($topicID),
            'member' => $form_model->getMembers($topicID),
            'unit' => $form_model->getUnit($topicID),
            'council' => $form_model->getCouncilMember($topicID, $this->expertise_council_id)
        );

        return view('form.bienban_hop_hoidong_thamdinh', compact('data'));
    }
    /**
     * Bổ sung thuyết minh đề cương đề tài NCKH cấp Khoa
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showBosungThuyetminh($topicID)
    {
        $form_model = new VFormModel();

        $data = array(
            'topic'  => Topic::where('pk_imadt', $topicID)->first(),
            'leader' => $form_model->getLeader($topicID),
            'member' => $form_model->getMembers($topicID),
            'unit' => $form_model->getUnit($topicID),
            'council' => $form_model->getCouncilMember($topicID, $this->expertise_council_id)
        );

        return view('form.bosung_thuyetminh', compact('data'));
    }

    /**
     * Phiếu đánh giá đề cương đề tài NCKH cấp Khoa
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showPhieudanhgiaDecuong($topicID)
    {
        $form_model = new VFormModel();

        $data = array(
            'topic'  => Topic::where('pk_imadt', $topicID)->first(),
            'council' => $form_model->getCouncilMember($topicID, $this->expertise_council_id)
        );
        return view('form.phieu_danhgia_decuong', compact('data'));
    }

    /**
     * Thuyết minh đề cương đề tài NCKH cấp Khoa
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showThuyetminhDecuong($topicID)
    {
        $form_model = new VFormModel();

        $data = array(
            'topic'  => Topic::where('pk_imadt', $topicID)->first(),
            'leader' => $form_model->getLeader($topicID),
            'member' => $form_model->getMembers($topicID),
            'unit' => $form_model->getUnit($topicID)
        );

        return view('form.thuyetminh_decuong_detai', compact('data'));
    }

    /**
     * Báo cáo tiến độ thực hiện đề tài NCKH
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showBctd(Request $request, $topicID)
    {
        $form_model = new VFormModel();
        $surveyContent = new ExpertiseContent();
        $data = array(
            'topic'  => Topic::where('pk_imadt', $topicID)->first(),
            'leader' => $form_model->getLeader($topicID),
            'member' => $form_model->getMembers($topicID),
            'unit' => $form_model->getUnit($topicID),
            'survey' => $surveyContent->getContentTopic($topicID, $this->survey_council_id)
        );

        // pr($data['survey']);

        return view('form.baocao_tiendo_thuchien', compact('data'));
    }

    /**
     * Đề nghị thanh toán đề tài NCKH cấp Khoa
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function showThanhtoan($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );


        return view('form.thanhtoan_detai_capkhoa', compact('data'));
    }


    /**
     * Đơn xin rút đề tài NCKH
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showRutDetai($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );
        return view('form.mau_rut_detai', compact('data'));
    }


    /**
     * Bản tự đánh giá về tình hình thực hiện và những đóng góp mới của đề tài nckh cấp trường
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showMau1($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );
        return view('form.mau1_hdntdt', compact('data'));
    }

    /**
     * Công văn đề nghị nghiệm thu đề tài NCKH
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showCongvanNghiemthu($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );
        return view('form.mau2_hdntdt', compact('data'));
    }

    /**
     * Đơn xin gia hạn thời gian thực hiện đề tài NCKH cấp Trường
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showGiahan($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );
        return view('form.mau3_hdntdt', compact('data'));
    }

    /**
     * PHIẾU NHẬN XÉT ĐỀ TÀI NGHIÊN CỨU KHOA HỌC
        DÀNH CHO NGƯỜI PHẢN BIỆN
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showPhieuPhanBien($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );
        return view('form.mau4_hdntdt', compact('data'));
    }

    /**
     * PHIẾU ĐÁNH GIÁ NGHIỆM THU ĐỀ TÀI NCKH CẤP KHOA/TRƯỜNG
     * @param [type] $topicID [description]
     */
    public function NghiemThuDetai($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );
        return view('form.mau5_hdntdt', compact('data'));
    }

    /**
     * BIÊN BẢN HỌP HỘI ĐỒNG ĐÁNH GIÁ CẤP ĐƠN VỊ
     * @param  [type] $topicID [description]
     * @return [type]          [description]
     */
    public function showHopHoidong($topicID)
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
            'xeploai' => $form_model->getNghiemthu($topicID)
        );
        return view('form.mau6_hdntdt', compact('data'));
    }
}
