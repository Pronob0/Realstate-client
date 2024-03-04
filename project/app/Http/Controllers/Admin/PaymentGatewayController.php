<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PaymentGateway;
use Illuminate\Http\Request;

class PaymentGatewayController extends Controller
{
    public function index()
    {
        $gateways = PaymentGateway::all();
        return view('admin.payment-gateway.index', compact('gateways'));
    }

    public function create(){
        return view('admin.payment-gateway.create');

    }

    public function store(Request $request)
    {
        $this->storeData($request, new PaymentGateway());

        return back()->with('success', 'New Payment has been created');
    }

    public function edit(PaymentGateway $gateway)
    {
        return view('admin.payment-gateway.edit', compact('gateway'));
    }

    public function storeData($request, $data, $id = null)
    {
        $request->validate([
            'title' => 'required|string|max:255|unique:payment_gateways,title,' . $id,

        ]);
        $input = $request->all();
        $input['type'] = 'Manual';
        $data->fill($input)->save();
    }
    public function update(Request $request, $id)
    {

        $data = PaymentGateway::findOrFail($id);
        $prev = '';

        if(PaymentGateway::where('name',$request->name)->where('id','!=',$id)->exists()){
            
            return back()->with('error', __('This name has already been taken.'));
        }


        if($data->type == "automatic"){

            $input = $request->all();

            $info_data = $input['pkey'];

            if (array_key_exists("sandbox_check",$info_data)){
                $info_data['sandbox_check'] = 1;
            }else{
                if (strpos($data->information, 'sandbox_check') !== false) {
                    $info_data['sandbox_check'] = 0;
                    $text =  $info_data['text'];
                    unset($info_data['text']);
                    $info_data['text'] = $text;
                }
            }
            $input['information'] = json_encode($info_data);
       $data['status'] = $input['status'];
            $data->update($input);
           
        }
        else{
            if(PaymentGateway::where('name',$request->name)->where('id','!=',$id)->exists()){
                return back()->with('error', __('This name has already been taken.'));
            }

            $input = $request->all();
            $data->update($input);
        }

        return back()->with('success', __('Payment gateway updated successfully'));
    }

    public function destroy(Request $request, $id)
    {
        
        $gateway = PaymentGateway::findOrFail($id);
        $gateway->delete();
        return back()->with('success', __('Payment gateway deleted successfully'));
    }




}
