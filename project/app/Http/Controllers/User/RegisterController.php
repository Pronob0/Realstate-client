<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use App\Models\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class RegisterController extends Controller
{
    public function register(Request $request)
    {
        $rules = [
            'username' => 'required|alpha_dash|min:5|unique:users',
            'email' => 'required|email|max:255|unique:users',
            'phone' => 'required|min:6',
            'password' => 'required|confirmed'
            ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
          return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }

        $gs = Generalsetting::first();
        $token = md5(time().$request->name.$request->email);

        $user = new User();
        $input = $request->all();
        $input['password'] = bcrypt($request->password);
        $input['verified'] = 1;
        $input['is_plan'] = 0;
        $input['verification_link'] = $token;
        $user->fill($input)->save();

        if($gs->email_notify == 1)
        {
            $verificationLink = "<a href=".url('user/register/verify/'.$token).">Simply click here to verify. </a>";
            $subject = 'Verify your email address.';
            $msg = "Dear Customer,<br> We noticed that you need to verify your email address.".$verificationLink;
            

            if($gs->is_verify == 1)
            {
                require base_path("vendor/autoload.php");
                $mail = new PHPMailer(true); 

                try {
 
                    // Email server settings
                    $mail->SMTPDebug = 0;
                    $mail->isSMTP();
                    $mail->Host = $gs->smtp_host;             //  smtp host
                    $mail->SMTPAuth = true;
                    $mail->Username = $gs->smtp_user;   //  sender username
                    $mail->Password = $gs->smtp_pass;       // sender password
                    $mail->SMTPSecure =$gs->mail_encryption;                  // encryption - ssl/tls
                    $mail->Port = $gs->smtp_port;                          // port - 587/465
                    $mail->setFrom($gs->from_email, $gs->from_name);
                    $mail->addAddress($user->email, $user->name);
                    $mail->addReplyTo($gs->from_email, $gs->from_name);
                    $mail->isHTML(true);                // Set email content format to HTML
                    $mail->Subject = $subject;
                    $mail->Body    = $msg;

                    $mail->send();
         
                    // $mail->AltBody = plain text version of email body;
                   Toastr::success('Email Verification Link Sent Successfully to your Account');
         
                } catch (Exception $e) {
                    //  dd($e);
                }
            }
        }
        else{
            $owner->email_verified = 'Yes';
            $owner->update();
            return response()->json(route('home'));
        }
    }

    public function token($token)
    {
            $gs = Generalsetting::findOrFail(1);
            if($gs->is_verify == 1)
            {
                $user = User::where('verification_link','=',$token)->first();
                if(isset($user))
                {
                    $user->email_verified = 'Yes';
                    $user->update();

                    Auth::guard('web')->login($user);
                    
                    return redirect()->route('user.dashboard');
                   
                }
            }
            else {
                return redirect()->back();
            }
    }
}
