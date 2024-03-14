@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ Page Title Start================================== -->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                
                <h2 class="ipt-title">Welcome!</h2>
                <span class="ipn-subtitle">Welcome To Your Account</span>
                
            </div>
        </div>
    </div>
</div>
<!-- ============================ Page Title End ================================== -->
<!-- ============================ User Dashboard ================================== -->
<section>
    <div class="container-fluid">
        <div class="row">
            
            @include('user.partials.sidebar-user')
            
            <div class="col-lg-9 col-md-8">
                <div class="dashboard-wraper">
                
                    <!-- Bookmark Property -->
                    <div class="form-submit">	
                        <h4>@lang('My Property')</h4>
                    </div>
                    
                    <div class="row">
                    
                       <table class="table table-striped">
                        <thead class="">
                            <tr>
                                <th>@lang('Title')</th>
                                <th>@lang('Category')</th>
                               
                                <th>@lang('property Type')</th>
                                <th>@lang('Actions')</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($advertisements as $item)
                            <tr>
                              <td data-label="@lang('Title')">{{$item->title}}</td>
                              <td data-label="@lang('Category')">{{__($item->category->name)}}</td>
                             
                              <td data-label="@lang('Property type')">
                                {{__($item->property_type)}}
                              </td>
              
                              <td data-label="@lang('Actions')">
                                <a target="__blank" href="{{ route('advertise.details',$item->id) }}" class="btn btn-sm btn-primary"><i
                                    class="fa fa-eye"></i></a>
                                    <a href="javascript:void(0)" class="btn btn-danger  btn-sm remove mb-1"
                                    data-route="{{ route('admin.property.destroy', $item) }}" data-toggle="tooltip"
                                    title="@lang('Delete')"><i class="fas fa-trash"></i></a>
                              </td>
              
                            </tr>
                            @empty
                            <tr>
                              <td class="text-center" colspan="12">@lang('No data found!')</td>
                            </tr>
                            @endforelse
                          </tbody>
                       
                       </table>
                        
                       @if ($advertisements->hasPages())
                        <div class="card-footer">
                        {{$advertisements->links('admin.partials.paginate')}}
                        </div>
                        @endif
                    </div>
                    
                </div>
            </div>
            
        </div>
    </div>
</section>
<!-- ============================ User Dashboard End ================================== -->


<!-- ============================ Call To Action ================================== -->
<section class="theme-bg call-to-act-wrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                
                <div class="call-to-act">
                    <div class="call-to-act-head">
                        <h3>Want to Become a Real Estate Agent?</h3>
                        <span>We'll help you to grow your career and growth.</span>
                    </div>
                    <a href="#" class="btn btn-call-to-act">SignUp Today</a>
                </div>
                
            </div>
        </div>
    </div>
</section>
<!-- ============================ Call To Action End ================================== -->

@endsection

@push('js')

<script>
     
</script>

@endpush