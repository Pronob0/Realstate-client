<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use Brian2694\Toastr\Facades\Toastr as FacadesToastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Toastr;

class UserLoginController extends Controller
{
    public function __construct()
    {
      $this->middleware('guest', ['except' => ['logout', 'userLogout']]);
    }

    public function login(Request $request)
    {
        $rules = [
              'email'   => 'required|email',
              'password' => 'required'
            ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
           
            if(session()->get('setredirectroute') != NULL){
              return response()->json(session()->get('setredirectroute'));
            }
            $gs = Generalsetting::first();
            $user = auth()->user();
            if($gs->two_factor && $user->twofa){
              return response()->json(route('user.otp'));
            }else{
                $user->update(['verified'=>1]);
                return response()->json(route('user.dashboard'));
            }
        }

        return response()->json(array('errors' => [ 0 => 'Credentials Doesn\'t Match !' ]));
    }

    public function logout(){
        Auth::guard('web')->logout();
        FacadesToastr::success('You are Logged out!');
        return redirect()->route('home');
    }

}
