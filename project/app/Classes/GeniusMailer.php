<?php
/**
 * Created by PhpStorm.
 * User: ShaOn
 * Date: 11/29/2018
 * Time: 12:49 AM
 */

namespace App\Classes;

use App\Models\EmailTemplate;
use App\Models\Generalsetting;
use App\Models\Pagesetting;
use App\Models\User;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Twilio\Rest\Client;
use PHPMailer\PHPMailer\PHPMailer;

class GeniusMailer
{
    public function __construct()
    {
        $this->gs = DB::table('generalsettings')->first();
        Config::set('mail.port', $this->gs->smtp_port);
        Config::set('mail.host', $this->gs->smtp_host);
        Config::set('mail.username', $this->gs->smtp_user);
        Config::set('mail.password', $this->gs->smtp_pass);
        Config::set('mail.encryption', $this->gs->mail_encryption);
    }
    public function sendAutoMail(array $mailData)
    {
        require base_path("vendor/autoload.php");
        $mail = new PHPMailer(true); 
        $gs=GeneralSetting::first();

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
            $mail->addAddress($mailData['to'], $mailData['cname']);
            $mail->addReplyTo($gs->from_email, $gs->from_name);
            
            $mail->isHTML(true);                // Set email content format to HTML
            $mail->Subject = "Your subscription placed successfully";
            $mail->Body    = "Hello ".$mailData['cname']."<br><br> Your subscription placed successfully. <br><br> Thank you.";
 
            // $mail->AltBody = plain text version of email body;
 
            $mail->send();
 
        } catch (Exception $e) {
            //  dd($e);
        }
    }

    public function sendPhpMailer(array $mailData){
        $gs = Generalsetting::first();
        $temp = EmailTemplate::where('email_type','=',$mailData['type'])->first();

        $body = preg_replace("/{customer_name}/", $mailData['cname'] ,$temp->email_body);
        $body = preg_replace("/{amount}/", $mailData['oamount'] ,$body);
        $body = preg_replace("/{admin_name}/", $mailData['aname'] ,$body);
        $body = preg_replace("/{admin_email}/", $mailData['aemail'] ,$body);
        $body = preg_replace("/{website_title}/", $gs->title ,$body);

        $mail = new PHPMailer(true);

        try {
            $mail->isSMTP();
            $mail->Host       = $gs->smtp_host;
            $mail->SMTPAuth   = true;
            $mail->Username   = $gs->smtp_user;
            $mail->Password   = $gs->smtp_pass;
            if ($gs->smtp_encryption == 'ssl') {
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
            } else {
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            }
            $mail->Port       = $gs->smtp_port;
            $mail->CharSet = 'UTF-8';
            $mail->setFrom($gs->from_email, $gs->from_name);
            $mail->addAddress($mailData['to'], $mailData['cname']);
            $mail->addReplyTo($gs->from_email, $gs->from_name);
            $mail->isHTML(true);
            $mail->Subject = $temp->email_subject;
            $mail->Body    = $body;
            $mail->send();
        } catch (Exception $e) {

        }
    }

    public function sendCustomMail(array $mailData)
    {
        $setup = Generalsetting::first();
        

        $data = [
            'email_body' => $mailData['body']
        ];

        $objDemo = new \stdClass();
        $objDemo->to = $mailData['to'];
        $objDemo->from = $setup->from_email;
        $objDemo->title = $setup->from_name;
        $objDemo->subject = $mailData['subject'];

        $user = User::where('email',$mailData['to'])->first();
        try{
            Mail::send('admin.email.mailbody',$data, function ($message) use ($objDemo) {
                $message->from($objDemo->from,$objDemo->title);
                $message->to($objDemo->to);
                $message->subject($objDemo->subject);
            });

          
        }
        catch (\Exception $e){
            // die($e);
        }
        return true;
    }



}
