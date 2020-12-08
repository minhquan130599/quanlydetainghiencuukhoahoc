<?php

namespace App\Http\Controllers\Deploy;

use Illuminate\Http\Request;
use App\Plan\Topic;
use App\Plan\Contract;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Deploy\Category;
use App\Certify\Certify;
use App\Deploy\Expense;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $topic = new Topic;
        $data = array(
            'paginatorContent' => $topic->getDeployTopic($request->keyword),
            'keyword' => $request->keyword,
            'page' => $request->page
        );
        return view('deploy.category.index', compact('data'));
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
        return view('deploy.category.show');
    }


    /**
     * Lấy các thông tin chi tiết của đề tài đó. Sau đó trả về cho client để xử lý
     * @link
     * @return void
     * @author asus
     **/
    public function resource(Request $request)
    {
        $category    = new Category();
        $id          = $request->id;
        $expertise   = $category->getExpertise($id, 1);
        $survey      = $category->getExpertise($id, 2);
        $acceptance  = $category->getAcceptance($id, 3);
        $liquidation = $category->getLiquidation($id);
        $certify     = new Certify();

        $data = [
            'topic'                      => $category->getTopicDetai($id),
            'member'                     => $category->getMemberJoinTopic($id),
            'contract'                   => Contract::where('fk_imadt', '=', $id)->first(),
            'expertise'                  => $expertise,
            'expertise_member_council'   => !empty($expertise) ? $category->getMemberCouncil($expertise[0]->pk_imahd) : null,
            'survey'                     => $survey,
            'survey_member_council'      => !empty($survey) ? $category->getMemberCouncil($survey[0]->pk_imahd) : null,
            'acceptance'                 => $acceptance,
            'acceptance_member_council'  => !empty($acceptance) ? $category->getMemberCouncil($acceptance->pk_imahd) : null,
            'liquidation'                => $liquidation,
            'liquidation_member_council' => !empty($liquidation) ? $category->getMemberCouncil($liquidation->pk_imahd) : null,
            'certify'                    => $certify->getOneCertify($id) ? $certify->getOneCertify($id) : null,
            'expense'                    => Expense::where('pk_imadt', '=', $id)->get()
        ];

        return response()->json($data);
    } // End action resource
} // End class
