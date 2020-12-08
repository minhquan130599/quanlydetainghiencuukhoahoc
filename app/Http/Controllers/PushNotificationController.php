<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\System\Pushnotification;
class PushNotificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pushnt = new Pushnotification();
        $data = $pushnt->GetNotification();
        $arrayNotify = array();

       foreach ($data AS $key => $n)
       {
            $date = date('d/m/Y', strtotime($n->created_at));
            if (array_key_exists($date, $arrayNotify))
            {
                $arrayNotify[$date][] = $data[$key];
            }
            else {

                $arrayNotify[$date] = array($data[$key]);
            }
       }
        return view('pushnotification',compact('arrayNotify'));
    }

}
