<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Currency;
use Illuminate\Http\Request;

class CurrencyController extends Controller
{
    public function index()
    {
        $currencies = Currency::all();
        return view('admin.currency.index', compact('currencies'));
    }

    public function store(Request $request)
    {

        $this->storeData($request, new Currency());
        return back()->with('success', __('Currency added successfully!'));
    }


    public function update(Request $request, $id)
    {
        $currency = Currency::findOrFail($id);
        $this->storeData($request, $currency, $id);
        return back()->with('success', __('Currency updated successfully'));
    }
    public function storeData($request, $data, $id = null)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:blog_categories,name,' . $id,
            'sign' => 'required|string|max:255|unique:currencies,sign,' . $id,
            'value' => 'required|numeric',


        ]);
        $data->name = $request->name;
        $data->sign = $request->sign;
        $data->value = $request->value;
        if($request->is_default==1){
            Currency::where('is_default',1)->update(['is_default'=>0]);
            $data->is_default = $request->is_default;
        }
        $data->save();

    }

    public function destroy(Request $request)
    {
        
        $currency = Currency::findOrFail($request->id);
        if($currency->id==1 || $currency->is_default==1){
            return back()->with('error', __('You can not delete default currency'));
        }
        $currency->delete();
        return back()->with('success', __('Currrency deleted successfully'));
    }
}
