<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use Illuminate\Http\Request;

class PropertyController extends Controller
{
    public function index(Request $request){

       $remark = request('remark');
       if($remark == 'room_rent'){
          $advertisements = Advertisement::where('category_id',13)->orderBy('id','desc')->paginate(20);
       }
       elseif($remark == 'exclusive_deals'){
        $advertisements = Advertisement::where('category_id',12)->orderBy('id','desc')->paginate(20);
       }
       elseif($remark == 'property_wanted'){
        $advertisements = Advertisement::where('category_id',11)->orderBy('id','desc')->paginate(20);
       }
       else{
        $advertisements = Advertisement::orderBy('id','desc')->paginate(20);
       }

       return view ('admin.property.index',compact('advertisements'));

    }

    public function destroy(Advertisement $adv)
    {
      foreach($adv->usercontacts as $usercontact){
         foreach($usercontact->conversations as $conversation){
            $conversation->delete();
         }
         $usercontact->delete();
      }
       
        $adv->delete();

        return back()->with('success', 'Advertisement has been deleted');
    }
}
