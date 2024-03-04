<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use Illuminate\Http\Request;

class MyPropertyController extends Controller
{
    public function index(){
        $advertisements = Advertisement::where('user_id',auth()->user()->id)->orderBy('id','desc')->paginate(20);
        return view ('user.property.index',compact('advertisements'));
    }
}
