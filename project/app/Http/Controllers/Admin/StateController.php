<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\State;
use Illuminate\Http\Request;
use Datatables;

class StateController extends Controller
{

    public function __construct()
    {

       

        
    }
    public function datatables($id)
    {
         $datas = state::where('country_id', $id)->get();

         return Datatables::of($datas)
                             
                            ->addColumn('action', function(State $data) {

                              return '
                              <a href="javascript:void()" class="btn btn-primary approve btn-sm edit mb-1"  data-route="'.  route('admin.state.update',$data->id).'" data-postcode='.$data->postcode.' data-area='.$data->area.' data-region='.$data->region.' data-country='.$data->country.' data-toggle="modal"  id="editbutton" title="'.__("Edit").'"><i class="fas fa-edit"></i></a>
                                
                                <a href="javascript:;" data-toggle="modal" data-id='.$data->id.'  class="btn btn-danger remove btn-sm mb-1" data-route="'.  route('admin.state.destroy',$data->id).'"><i class="fas fa-trash"></i></a>';

                              
  
                              })
                            ->rawColumns(['status','action'])
                            ->toJson();
    }

    public function index($id)
    {
        
        return view('admin.state.index', compact('id'));
    }

    public function store(Request $request)
    {

        $this->storeData($request, new State());
        return back()->with('success', __('State added successfully'));
    }

    public function update(Request $request, $id)
    {
        $state = State::findOrFail($id);
        $this->storeData($request, $state, $id);
        return back()->with('success', __('State updated successfully'));
    }

    public function storeData($request, $data, $id = null)
    {
        $request->validate([
             'postcode' => 'required|string|max:255|unique:states,postcode,' . $id,
             'area'=>'required|string|max:255',
             'region'=>'required|string|max:255',
             'country'=>'required|string|max:255',
        ]);

        $data->postcode = $request->postcode;
        $data->area = $request->area;
        $data->region = $request->region;
        $data->country = $request->country;
        $data->country_id = $request->country_id;
        $data->save();



    }

    public function destroy(Request $request)
    {
        $state = State::findOrFail($request->id);

        $state->delete();
        return back()->with('success', __('State deleted successfully'));
    }
}
