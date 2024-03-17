<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Helpers\MediaHelper;
use App\Models\UserContact;
use App\Models\UserOwnerConversation;
use App\Models\Verification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){

       
        return view('user.dashboard');
        
    }

    public function profileUpdate(Request $request)
    {
        $validatior = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'address' => 'required',
            'photo' => 'mimes:jpeg,jpg,png,gif',
        ]);

        if($validatior->fails()){
            return redirect()->back()->withErrors($validatior)->withInput();
        }

        $user = auth()->user();
        $input = $request->all();
        if( $request->hasFile('photo') ){
            $image = $request->file('photo');
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move('assets/images',$image_name);
            @unlink('assets/images/'.$user->photo);
            $input['photo'] = $image_name;
        }

        
        $user->fill($input)->save();

       

        return redirect()->back()->with('message','Profile updated successfully');
    }

    public function message( Request $request){
        $user = auth()->user();
        $tickets =UserContact::where('owner_id',$user->id)->orwhere('user_id',$user->id)->orderBy('id','DESC')->get();
        $messages = UserOwnerConversation::when($request->ticket,function($query) use ($request){
            return $query->where('contact_id',$request->ticket);
        })
        ->get();
        $ticket = UserContact::where('owner_id',$user->id)->orwhere('user_id',$user->id)->orderBy('id','DESC')->first();
        return view('user.message',compact('tickets','messages','ticket'));

    }

    public function postReply( Request $request, $id){
        
        $input = $request->all();
        $contact = UserContact::find($id);
        $conversation = new UserOwnerConversation();
        $conversation->contact_id = $contact->id;
        $conversation->owner_id = $contact->user_id;
        $conversation->user_id = $contact->owner_id;
        $conversation->messages = $request->messages;
        $conversation->save();

       
        return redirect()->back()->with('message','Message sent successfully');
    }

    public function verification(){
        $user = auth()->user();
        return view('user.verification',compact('user'));
    }


    public function verificationSubmit(Request $request){


        $verify = Verification::where('user_id',auth()->user()->id)->first();
        if($verify){
            return redirect()->back()->with('message','Verification already submitted');
        }

        $validator = Validator::make($request->all(),[
            'qualification' => 'required',
            'id_card' => 'required',
            'id_image' => 'required|mimes:jpeg,jpg,png,gif',
            'criminal_record' => 'required|mimes:jpeg,jpg,png,gif',
        ]);


        $user = auth()->user();
        $input = $request->all();
        if( $request->hasFile('id_image') ){
            $image = $request->file('id_image');
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move('assets/images',$image_name);
            $input['id_image'] = $image_name;
        }
        if( $request->hasFile('criminal_record') ){
            $image = $request->file('criminal_record');
            $image_name = time().'.'.$image->getClientOriginalExtension();
            $image->move('assets/images',$image_name);
            $input['criminal_record'] = $image_name;
        }

        $input['user_id'] = $user->id;
        $verification = Verification::create($input);
        return redirect()->back()->with('message','Verification submitted successfully');
    }

   


}
