<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Advertisement;
use App\Models\Category;
use App\Models\SubCategory;
use Brian2694\Toastr\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MyPropertyController extends Controller
{
    public function index()
    {
        $advertisements = Advertisement::where('user_id', auth()->user()->id)->orderBy('id', 'desc')->paginate(20);
        return view('user.property.index', compact('advertisements'));
    }

    public function destroy($id)
    {

        $advertisement = Advertisement::find($id);

        if ($advertisement->image) {
            unlink('uploads/advertisement/' . $advertisement->image);
        }



        $usercontact = $advertisement->usercontacts;
        if ($usercontact->count() > 0) {
            foreach ($usercontact as $contact) {
                $userowner = $contact->conversations;
                foreach ($userowner as $owner) {
                    $owner->delete();
                }
            }
            $usercontact->delete();
        }

        $advertisement->delete();

        Toastr::success('Advertisement Deleted Successfully', 'Success');
    }

    public function edit($id)
    {
        $advertisement = Advertisement::find($id);
        $categories = Category::all();
        $subCategories = SubCategory::all();
        return view('user.property.edit', compact('advertisement', 'categories', 'subCategories'));
    }

    public function serviceUpdate(Request $request, $id)
    {


        $validator = Validator::make($request->all(), [
            'floor_pic' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'photo.*' => 'mimes:jpeg,png,jpg,gif,svg|max:2048',
            'title' => 'required|max:30',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }


        $input = $request->all();



        $advertisement = Advertisement::find($id);


        $input['category_id'] = $request->category_id;
        // array to string 
        if (isset($request->amenities)) {
            $input['amenities'] = implode(',', $request->amenities);
        }
        if (isset($request->property_type)) {
            $input['property_type'] = implode(',', $request->property_type);
        }
        if (isset($request->bedroom)) {
            $input['bedroom'] = implode(',', $request->bedroom);
        }
        if (isset($request->bathroom)) {
            $input['bathroom'] = implode(',', $request->bathroom);
        }
        if (isset($request->reception)) {
            $input['reception'] = implode(',', $request->reception);
        }
        if (isset($request->require)) {
            $input['require'] = implode(',', $request->require);
        }
        // features
        if (isset($request->features)) {
            $input['features'] = implode(',', $request->features);
        }
        // tenance
        if (isset($request->tenance)) {
            $input['tenance'] = implode(',', $request->tenance);
        }

        if (isset($request->is_room_wanted)) {
            // about you json 

            $age = $request->age;
            $occupation = $request->occupation;
            $nationality = $request->nationality;
            $language = $request->language;
            $gender = $request->gender;
            $name = $request->your_name;
            $smoke = $request->smoke;
            $pets = $request->pets;

            $input['about_you'] = json_encode([
                'age' => $age,
                'occupation' => $occupation,
                'nationality' => $nationality,
                'language' => $language,
                'gender' => $gender,
                'name' => $name,
                'smoke' => $smoke,
                'pets' => $pets,
            ]);


            // about flatmate json
            $mate_age = $request->mate_age;
            $mate_occupation = $request->mate_occupation;
            $mate_gender = $request->mate_gender;
            $mate_smoke = $request->mate_smoke;
            $mate_pets = $request->mate_pets;

            $input['about_flatmte'] = json_encode([
                'mate_age' => $mate_age,
                'mate_occupation' => $mate_occupation,
                'mate_gender' => $mate_gender,
                'mate_smoke' => $mate_smoke,
                'mate_pets' => $mate_pets,
            ]);
        }


        if ($request->is_tenancy == 1) {
            $input['is_tenancy'] = 1;
            $monthly_rent = $request->monthly_rent;
            $month = $request->month;
            $weekly_rent = $request->weekly_rent;
            $tenance_number = $request->tenance_number;
            $deposit = $request->deposit;
            $date = $request->date;
            $input['tenant_details'] = json_encode([
                'monthly_rent' => $monthly_rent,
                'month' => $month,
                'weekly_rent' => $weekly_rent,
                'tenance_number' => $tenance_number,
                'deposit' => $deposit,
                'date' => $date,
            ]);
        }





        // multiple image upload as string
        if ($request->hasFile('photo')) {
            $images = $request->file('photo');
            $imageArray = array();
            foreach ($images as $image) {
                $image_name = Str::random(6) . time() . '.' . $image->getClientOriginalExtension();
                $image->move('assets/images/advertisement', $image_name);
                $imageArray[] = $image_name;
            }

            $input['photo'] = implode(',', $imageArray);
        }

        if ($request->hasFile('floor_pic')) {
            $image = $request->file('floor_pic');
            $image_name = time() . '.' . $image->getClientOriginalExtension();
            $image->move('assets/images/floor', $image_name);
            $input['floor_pic'] = $image_name;
        }



        // cost as json 
        if ($request->subcategory_id == 5) {
            $rent_pm = $request->rent_pm;
            $rent_deposit = $request->rent_deposit;
            $damage_deposit = $request->damage_deposit;
            $agency_fee = $request->agency_fee;
            $potential_rent = $request->potential_rent;

            if ($request->rent_pm != null || $request->rent_deposit != null || $request->damage_deposit != null || $request->agency_fee != null || $request->potential_rent != null) {
                $input['cost'] = json_encode([
                    'rent_pm' => $rent_pm,
                    'rent_deposit' => $rent_deposit,
                    'damage_deposit' => $damage_deposit,
                    'agency_fee' => $agency_fee,
                    'potential_rent' => $potential_rent,
                ]);
            }
        } elseif ($request->subcategory_id == 6) {

            $rent_pm = $request->rent_pm;
            $potential_rent = $request->potential_rent;
            $agency_fee = $request->agency_fee;


            if ($request->rent_pm != null  || $request->agency_fee != null || $request->potential_rent != null) {
                $input['cost'] = json_encode([
                    'rent_pm' => $rent_pm,
                    'potential_rent' => $potential_rent,
                    'agency_fee' => $agency_fee,

                ]);
            }
        }
        $advertisement->fill($input)->save();
        Toastr::success('Advertisement Updated Successfully', 'Success');
        return redirect()->route('user.property.index');
    }
}
