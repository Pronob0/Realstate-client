<?php

namespace App\Http\Controllers\User;

use App\Classes\GeniusMailer;
use App\Http\Controllers\Controller;
use App\Models\Currency;
use App\Models\Generalsetting;
use App\Models\PaymentGateway;
use App\Models\Subscription;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class StripeController extends Controller
{
    public function __construct()
    {


        $data = PaymentGateway::whereKeyword('Stripe')->first();
        $paydata = $data->convertAutoData();

        \Stripe\Stripe::setApiKey($paydata['secret']);
    }

    public function store(Request $request){

       if(!auth()->check()){
            return redirect()->back()->with('warning','Please Login First');
        }

        $gs = Generalsetting::findOrFail(1);
        $item_name = $gs->title." Plan";
        $currency= Currency::where('is_default','=',1)->first();
       
        $item_amount = $request->amount;

        $support = ['USD','GBP','EUR'];
        if(!in_array($currency->name,$support)){
            return redirect()->back()->with('warning','Please Select valid Currency For Stripe.');
        }

        Session::put('request',$request->all());


            $session = \Stripe\Checkout\Session::create([
                "line_items" => [
                    [
                        "quantity" => 1,
                        "price_data" => [
                            "currency" => $currency->name,
                            "unit_amount" =>$item_amount*100,
                            "product_data" => [
                                "name" => $gs->title . 'Plan'
                            ]
                        ]
                    ]
                    ],
                'mode' => 'payment',
                "locale" => "auto",
                'success_url' => route('checkout.success', [], true) . "?session_id={CHECKOUT_SESSION_ID}",
                'cancel_url' => route('stripe.cancel', [], true),
              ]);
              return redirect($session->url);
       
    }

    public function cancel(){
        return redirect()->route('plan')->with('message','Something went wrong!');
    }


    public function success(Request $request)
    {
        $currency= Currency::where('is_default','=',1)->first();
        $user= Auth::user();
        $gs= Generalsetting::first();
        
        $sessionId = $request->get('session_id');

        try{
            
            $session = \Stripe\Checkout\Session::retrieve($sessionId);

        
            if (!$session) {
                throw new NotFoundHttpException;
            }
            $item_number = Str::random(4).time();
            $request = Session::get('request');

            if ($session->payment_status == 'paid'  && $session->status=='complete') {
                
                $addionalData = ['item_number'=>$item_number,'txnid'=>$session->payment_intent,'charge_id'=> $sessionId ];

                $subscription = new Subscription();
                $subscription->user_id = $user->id;
                $subscription->plan_id = $request['plan_id'];
                $subscription->method = 'Stripe';
                $subscription->currency_id = $currency->id;
                $subscription->price = $request['amount'];
                $subscription->transaction_no = $item_number;
                $subscription->charge_id = $sessionId;
                $subscription->txnid = $session->payment_intent;
                $subscription->payment_status = 'Completed';
                $subscription->status = 1;
                $subscription->save();


                // Transaction 
                $transaction = new Transaction();
                $transaction->trnx_number = $item_number;
                $transaction->user_id = $user->id;
                $transaction->amount = $request['amount'];
                $transaction->currency_id = $currency->id;
                $transaction->type = '-';
                $transaction->remark = 'subscription';
                $transaction->details = 'Subscription of '.$gs->title.' Plan';
                $transaction->save();


                $user->is_plan = $request['plan_id'];
                $user->save();


        if($gs->is_smtp == 1)
        {
            $data = [
                'to' => $user->email,
                'type' => "Plan",
                'cname' => $user->name,
                'oamount' => $request['amount'],
                'aname' => "",
                'aemail' => "",
                'wtitle' => "",
                
            ];

            $mailer = new GeniusMailer();
            $mailer->sendAutoMail($data);
        }
        else
        {
           $to = $user->email;
           $subject = " You have Upgraded Plan successfully.";
           $msg = "Hello ".$user->name."!\nYou have Upgraded Plan successfully.\nThank you.";
           $headers = "From: ".$gs->from_name."<".$gs->from_email.">";
           mail($to,$subject,$msg,$headers);
        }

                return redirect()->back()->with('message','Subscription successfully complete.');
            }

        }catch (Exception $e){
            return back()->with('unsuccess', $e->getMessage());
        }

    }






}
