<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Feedback;

class FeedbackController extends Controller
{

    public function index()
    {
        $feedback = Feedback::orderBy('updated_at', 'DESC')->get();
        return view('feedback', compact('feedback'));
    }


    public function store(Request $request)
    {
        $feedback = new Feedback();
        $feedback->email = $request->txtEmail;
        $feedback->phone_number = $request->TxtSdt;
        $feedback->content = strip_tags($request->txtNoidung);
        $feedback->save();
        return redirect()->back()->with(['message' => 'Cảm ơn bạn đã gửi góp ý.']);
    }
}
