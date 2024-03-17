<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Category;
use App\Models\SubCategory;
use Brian2694\Toastr\Toastr;
use Illuminate\Http\Request;

class MyPropertyController extends Controller
{
    public function index(){
        $advertisements = Advertisement::where('user_id',auth()->user()->id)->orderBy('id','desc')->paginate(20);
        return view ('user.property.index',compact('advertisements'));
    }

    public function destroy($id){

        $advertisement = Advertisement::find($id);

        if($advertisement->image){
            unlink('uploads/advertisement/'.$advertisement->image);
        }

        

        $usercontact = $advertisement->usercontacts;
        if($usercontact->count() > 0   ){
            foreach($usercontact as $contact){
                $userowner = $contact->conversations;
                foreach($userowner as $owner){
                    $owner->delete();
                }
            }
            $usercontact->delete();
        }

        $advertisement->delete();

        Toastr::success('Advertisement Deleted Successfully','Success');
        

    }

    public function edit($id){
        $advertisement = Advertisement::find($id);
        $categories = Category::all();
        $subCategories = SubCategory::all();
        return view('user.property.edit',compact('advertisement', 'categories', 'subCategories'));
    }
}
