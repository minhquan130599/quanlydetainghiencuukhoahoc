<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Staff\Staff;
use App\Plan\Topic;
use App\Plan\Contract;
use App\Certify\Certify;
use App\Welcome;
use Auth;
class WelcomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $welcome = new Welcome();
        $id = Auth::user()->pk_imanhomcb;
        // $id = 'CB_100';
        // pr($welcome->getNoteExpetise(1,null));
        if(Auth::user()->pk_imanhomcb == 4){
            $expertise_data   = $this->handle($welcome->getNoteExpetise(1,$id));
            $survey_data      = $this->handle($welcome->getNoteExpetise(2,$id));
            $acceptance_data  = $this->handle($welcome->getNoteAcceptance($id));
            $liquidation_data = $this->handle($welcome->getNoteLiquidation($id));
        }
        else{
            $expertise_data   = $this->handle($welcome->getNoteExpetise(1,null));
            $survey_data      = $this->handle($welcome->getNoteExpetise(2,null));
            $acceptance_data  = $this->handle($welcome->getNoteAcceptance(null));
            $liquidation_data = $this->handle($welcome->getNoteLiquidation(null));
        }
        

        $data = array(
            'staff'       => Staff::all()->count(),
            'topic'       => Topic::where('pk_imatt', '=', 1)->count(),
            'expertise'   => $welcome->countExpertise(1),
            'contract'    => Contract::all()->count(),
            'deploy'      => $welcome->countDeploy(),
            'survey'      => $welcome->countExpertise(2),
            'delay'       => $welcome->countDelayTopic(),
            'acceptance'  => $welcome->countAcceptance(),
            'liquidation' => $welcome->countLiquidation(),
            'certify'     => Certify::all()->count(),
            'destroy'     => Topic::where('pk_imatt', '=', 7)->count()
        );

        return view('welcome', compact('data', 'expertise_data', 'survey_data', 'acceptance_data', 'liquidation_data'));
    }

    private function handle($data)
    {
        $array = array();
        foreach ($data AS $k => $v)
        {
            if (array_key_exists($v->dngaylamviec, $array))
            {
                $array[$v->dngaylamviec] = sprintf('%s <br> - %s', $array[$v->dngaylamviec], $v->stendt);
            }
            else {
                $array[$v->dngaylamviec] = sprintf('- %s', $v->stendt);
            }
        }
        return $array;
    }
} // End class
