<?php

namespace App\Http\Resources;

use App\Helpers\MediaHelper;
use App\Http\Helpers\MediaHelper as HelpersMediaHelper;
use App\Models\Generalsetting;
use Illuminate\Support\Facades\Cache;

class GeneralSettingResource {
    
    // generalsetting category update
    public function update($input)
    {
     
        $gs = Generalsetting::first();
        $images = ['header_logo','favicon'];
        foreach($images as $image){
            if(isset($input[$image])){
               $input[$image] = HelpersMediaHelper::handleUpdateImage($input[$image],$gs[$image]);
            }
        }
      
     
       
        if(isset($input['menu'])){
            $input['menu'] =  $this->setMenu($input);
        }
        if(isset($input['allowed_email'])){
            $input['allowed_email'] = $input['allowed_email'] ? tagFormat($input['allowed_email']) : null;
        }
        if(isset($input['theme_color'])){
            $input['theme_color'] = str_replace('#','',$input['theme_color']);
        }
        if (isset($input['recaptcha_secret'])) {
            $this->setEnv('NOCAPTCHA_SECRET',$input['recaptcha_secret']);
            $this->setEnv('NOCAPTCHA_SITEKEY',$input['recaptcha_key']);
        }
        
        $this->emailConfig($input);
        $gs->update($input);
        Cache::forget('generalsettings');
    }


    private function setEnv($key, $value)
    {
        file_put_contents(app()->environmentFilePath(), str_replace(
            $key . '=' . env($key),
            $key . '=' . $value,
            file_get_contents(app()->environmentFilePath())
        ));
    }

   public function emailConfig($input)
   {
// dd($input);
        try {
            $this->setEnv('MAIL_HOST',$input['smtp_host']);
            $this->setEnv('MAIL_PORT',$input['smtp_port']);
            $this->setEnv('MAIL_USERNAME',$input['smtp_user']);
            $this->setEnv('MAIL_PASSWORD',$input['smtp_pass']);
            $this->setEnv('MAIL_ENCRYPTION',$input['mail_encryption']);
           
        } catch (\Throwable $e) {
           
        }
   }


   public function setMenu($input)
   {
        unset($input['menu']);
        unset($input['_token']);
        return json_encode($input);
   }
}


