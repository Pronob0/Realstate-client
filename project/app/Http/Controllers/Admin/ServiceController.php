<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Helpers\MediaHelper;
use App\Models\Service;
use App\Models\ServiceCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ServiceController extends Controller
{
    public function index()
    {
        $blogs = Service::with('category')->orderBy('id','DESC')->paginate(15);
        return view('admin.service.index', compact('blogs'));
    }

    public function create()
    {
        $categories = ServiceCategory::where('status', 1)->get();
        return view('admin.service.create', compact('categories'));
    }
    

    public function store(Request $request)
    {
        $this->storeData($request, new Service());

        return back()->with('success', 'New blog has been created');
    }

    public function edit(Service $blog)
    {
        $categories = ServiceCategory::where('status', 1)->get();
        return view('admin.service.edit', compact('blog', 'categories'));
    }

    public function update(Request $request, $id)
    {
        $blog = Service::findOrFail($id);
        $this->storeData($request, $blog, $blog->id);
        return back()->with('success', 'Service has been updated');
    }

    public function storeData($request, $data, $id = null)
    {
        $request->validate([
            'title' => 'required|string|max:255|unique:blogs,title,' . $id,
            'category_id' => 'required|integer',
            'description' => 'required|string',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'budget' => 'required|integer',
            'location' => 'required|string',
            
        ]);




        $data->title = $request->title;
        $data->slug = Str::slug($request->title);
        $data->category_id = $request->category_id;
        $data->description = $request->description;
        $data->budget = $request->budget;
        $data->location = $request->location;
        if($id){
            $data->user_id = $data->user_id;
        }
        else{
            $data->user_id = 0;
        }
      
        if(isset($request['photo'])){
            $status = MediaHelper::ExtensionValidation($request['photo']);
            if(!$status){
                return ['errors' => [0=>'file format not supported']];
            }
            if($id){
                $data->photo = MediaHelper::handleUpdateImage($request['photo'],$data->photo);
            }else{
                $data->photo = MediaHelper::handleMakeImage($request['photo']);
            } 
        }
        $data->save();
    }

    public function destroy(Service $blog)
    {
        MediaHelper::handleDeleteImage($blog->photo);
        $blog->delete();

        return back()->with('success', 'Service has been deleted');
    }
}
