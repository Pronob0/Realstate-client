<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class SubcategoryController extends Controller
{
    public function index()
    {
        $subcategories = SubCategory::orderby('id', 'desc')->paginate(15);
        $categories= Category::all();
        return view('admin.subcategory.index', compact('subcategories', 'categories'));
    }

    public function store(Request $request)
    {

        $this->storeData($request, new SubCategory());
        return back()->with('success', __('SubCategory added successfully'));
    }

    public function update(Request $request, $id)
    {
        $subcategory = SubCategory::findOrFail($id);
        $this->storeData($request, $subcategory, $id);
        return back()->with('success', __('SubCategory updated successfully'));
    }

    public function storeData($request, $data, $id = null){

        $request->validate([
            'name' => 'required|string|max:255|unique:sub_categories,name,' . $id,
            'category_id' => 'required|integer',
        ]);

        $data->name = $request->name;
        $data->slug = Str::slug($request->name);
        $data->category_id = $request->category_id;
        $data->save();
    
    }

    public function destroy(Request $request)
    {
        
        return back()->with('success', __('SubCategory Cant be deleted successfully'));
    }

    public function attribute($id){

        $subcategory = SubCategory::findOrFail($id);
        $attributes = json_decode($subcategory->attributes);
        
        return view('admin.subcategory.attribute', compact('id', 'attributes', 'subcategory'));

    }

    public function attributeStore(Request $request){

        

        $subcategory = SubCategory::findOrFail($request->id);
        $amenities = $request->amenities;
        $property_type = $request->property_type;
        $plot_usage = $request->plot_usage;
        $strategy = $request->strategy;


        $subcategory->attributes = json_encode([
            'amenities' => $amenities,
            'property_type' => $property_type,
            'plot_usage' => $plot_usage,
            'strategy'=> $strategy,
        ]);
        if($request->is_bedrooms == 1){
            $subcategory->is_bedrooms = 1;
            $subcategory->bedroom = tagFormat($request->bedroom);

        }
        else{
            $subcategory->is_bedrooms = 0;
            $subcategory->bedroom = null;
        }
        if($request->is_bathrooms == 1){
            
            $subcategory->is_bathrooms = 1;
            $subcategory->bathrooms = tagFormat($request->bathrooms);

        }
        else{
            $subcategory->is_bathrooms = 0;
            $subcategory->bathrooms = null;

        }
        if($request->is_receptions == 1){
            $subcategory->is_receptions = 1;
            $subcategory->receptions = tagFormat($request->receptions);

        }
        else{
            $subcategory->is_receptions = 0;
            $subcategory->receptions = null;
        }
        if($request->is_required == 1){
            $subcategory->is_required = 1;
            $subcategory->required = tagFormat($request->required);

        }
        else{
            $subcategory->is_required = 0;
            $subcategory->required = null;
        }
      
       
       

        $subcategory->save();

        return back()->with('success', __('Attributes added successfully'));


    }
}
