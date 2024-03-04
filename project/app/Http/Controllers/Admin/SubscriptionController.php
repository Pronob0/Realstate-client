<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Plan;
use App\Models\Subscription;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class SubscriptionController extends Controller
{
    public function index()
    {
        $plans= Plan::all();
        return view('admin.subscription.index', compact('plans'));
    }

    public function create()
    {
        return view('admin.subscription.create');
    }

    public function store(Request $request)
    {
        $this->storeData($request, new Plan());

        return back()->with('success', 'New plan has been created');
    }

    public function edit(Plan $plan)
    {
        return view('admin.subscription.edit', compact('plan'));
    }

    public function update(Request $request, $id)
    {
        $plan = Plan::findOrFail($id);
        $this->storeData($request, $plan, $plan->id);
        return back()->with('success', 'Plan has been updated');
    }

    public function storeData($request, $data, $id = null)
    {
        $request->validate([
            'title' => 'required|string|max:255|unique:plans,title,' . $id,
            'price' => 'required|integer',
            'days' => 'required|integer',
            'contact_limit' => 'required|integer',
            'description' => 'required|string',
            'status' => 'required|integer',
            
        ]);

        $data->title = $request->title;
        $data->slug = Str::slug($request->title);
        $data->description = $request->description;
        $data->status = $request->status;
        $data->price = $request->price;
        $data->days = $request->days;
        $data->contact_limit = $request->contact_limit;
        $data->save();
    }

    public function userSubscription(){
        $user_subscription = Subscription::orderBy('id', 'desc')->get();
        return view('admin.subscription.user_subscription', compact('user_subscription'));
    }

    public function destroy(Plan $plan)
    {
        
        $plan->delete();
        return back()->with('success', 'Plan has been deleted');
    }
}
