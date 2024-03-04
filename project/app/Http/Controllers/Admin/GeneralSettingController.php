<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Helpers\MediaHelper;
use App\Http\Requests\Admin\GeneralSettingRequest;
use App\Http\Resources\GeneralSettingResource;
use App\Models\Generalsetting;
use App\Models\HeaderSection;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;


class GeneralSettingController extends Controller
{

    

    public function update(GeneralSettingRequest $request)
    {
      
        $gs = Generalsetting::first();
        if ($request->setting == 1 ) {
            $request->validate([
                'title' => 'required',
                'copyright_text' => 'required',
                'contact_no' => 'required',

            ]);

            $gs->title = $request->title;
            $gs->copyright_text = $request->copyright_text;
            $gs->contact_no = $request->contact_no;

        }

        if ($request->type == 'contact_section') {
            $gs->contact_section_header_title = $request->contact_section_header_title;
            $gs->contact_section_title = $request->contact_section_title;
        }

        if ($request->type == 'theme') {
            $gs->theme = $request->theme;
        }

        if($request->type == 'hero_section'){
            $gs->hero_title = $request->hero_title;
            $gs->hero_text = $request->hero_text;
           
        }

        if ($request->plugin) {
            $gs->is_tawk = $request->is_tawk;
            $gs->tawk_id = $request->tawk_id;
            $gs->is_disqus = $request->is_disqus;
            $gs->disqus = $request->disqus;
        }

        if ($request->maintenance) {
            $gs->is_maintenance = $request->is_maintenance;
            $gs->maintenance = $request->maintenance_message;
        }

        $images = ['header_logo', 'footer_logo', 'favicon', 'maintenance_photo', 'contact_section_photo', 'breadcumb', 'faq_photo', 'counter_photo','hero_banner','hero_bottom_banner','footer_bg','testimonial_photo'];
        foreach ($images as $image) {
            if (isset($request[$image])) {
                $gs[$image] = MediaHelper::handleUpdateImage($request[$image], $gs[$image]);
            }
        }

        
        $gs->save();

     

        return redirect()->back()->with('success', 'Data updated successfully');
    }

    public function mainupdate(GeneralSettingRequest $request)
    {
        $this->resource->update($request->all());
        
        Toastr::success(__('Data update successfully'));
        return back();
 
    }


    public function StatusUpdate($value)
    {
        $value = explode(',',$value);
        $status = $value[0];
        $field = $value[1];
     
        $data = Generalsetting::findOrFail(1);
        $data->$field = $status;
        $data->update();
        Cache::forget('generalsettings');
        if($status == 1){
            return response()->json(['status'=>1,'success' => __('Data Updated Successfully.')]);
        }else{
            return response()->json(['status'=>0,'success' => __('Data Updated Successfully.')]);
        }
    }


    public function logo()
    {
        return view('admin.generalsetting.logo');
    }

    public function favicon()
    {
        return view('admin.generalsetting.favicon');
    }

    public function loader()
    {
        return view('admin.generalsetting.loader');
    }

    public function cookie()
    {
        return view('admin.generalsetting.cookie');
    }
    public function menu()
    {
        return view('admin.generalsetting.menu_section');
    }
    public function contact_section()
    {
        return view('admin.generalsetting.contact_section');
    }
  
    public function maintenance()
    {
        
        return view('admin.generalsetting.maintenance');
    }
    public function siteSettings()
    {
        return view('admin.generalsetting.settings');
    }
    public function hero_page(){
        return view('admin.generalsetting.hero_page');

    }
    public function pluginSettings()
    {
        return view('admin.generalsetting.plugin');
    }

    public function breadcumb()
    {
        return view('admin.generalsetting.breadcumb');
    }

    public function header_section(){ 
        $section = HeaderSection::first();
        return view('admin.generalsetting.header_section',compact('section'));
    }

    public function header_section_update(Request $request){
        $section = HeaderSection::first();
        $section->update($request->all());
        Toastr::success(__('Data update successfully'));
        return back();
    }
 
}
