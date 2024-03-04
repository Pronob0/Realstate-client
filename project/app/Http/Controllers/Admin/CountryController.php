<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Country;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public function index()
    {
        $countries = Country::orderby('id', 'desc')->paginate(15);
        return view('admin.country.index', compact('countries'));
    }

    public function store(Request $request)
    {

        $this->storeData($request, new Country());
        return back()->with('success', __('Country added successfully'));
    }

    public function update(Request $request, $id)
    {
        $country = Country::findOrFail($id);
        $this->storeData($request, $country, $id);
        return back()->with('success', __('Country updated successfully'));
    }

    public function storeData($request, $data, $id = null)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:countries,name,' . $id,
            'iso3' => 'required|string|max:255|unique:countries,iso3,' . $id,
            'phone_code' => 'required|string|max:255|unique:countries,phone_code,' . $id,
        ]);
        $data->name = $request->name;
        $data->iso3 = $request->iso3;
        $data->phone_code = $request->phone_code;
        $data->status = $request->status;
        $data->save();

    }

    public function destroy(Request $request)
    {
        $country = Country::findOrFail($request->id);
        $country->delete();
        return back()->with('success', __('Country deleted successfully'));
    }
}
