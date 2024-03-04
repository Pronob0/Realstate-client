<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Helpers\MediaHelper;
use App\Http\Requests\Admin\SeoSettingRequest;
use App\Http\Resources\SeoSettingResource;
use App\Models\SeoSetting;
use Illuminate\Http\Request;

class SeoController extends Controller
{

    

    public function index(){
        $seo = SeoSetting::first();
        return view('admin.seo.index',compact('seo'));
    }

    public function update(request $request )
    {
       
        $seo = SeoSetting::first();
        $seo->title = $request->title;
        $seo->meta_description = $request->meta_description;
        $seo->meta_tag = tagFormat($request->meta_tag);
        $seo->google_analytics = $request->google_analytics;
        $seo->facebook_pixel = $request->facebook_pixel;

        if($request->hasFile('meta_image')){
            $seo->meta_image = MediaHelper::handleUpdateImage($request->meta_image,'seo');

        }
        $seo->update();
        
        return back()->with('success', 'Seo Setting has been updated');
       
    }
}
