@extends('layouts.admin')
@section('title')
   @lang('Add New Plan')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header  d-flex justify-content-between">
        <h1>@lang('Add New Plan')</h1>
        <a href="{{route('admin.subscription.index')}}" class="btn btn-primary"><i class="fas fa-backward"></i> @lang('Back')</a>
    </div>
</section>
@endsection
@section('content')

<div class="row justify-content-center">
   <div class="col-md-12">
      <!-- Form Basic -->
      <div class="card mb-4">
         <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">{{ __('Add New Plan Form') }}</h6>
         </div>
         <div class="card-body">
           
            <form action="{{route('admin.subscription.store')}}" enctype="multipart/form-data" method="POST">
                @csrf

                
            
                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="title">{{ __('Plan Title') }}</label>
                            <input type="text" class="form-control" name="title" id="title" required placeholder="{{ __('Plan Title') }}" value="{{old('title')}}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="price">{{ __('Plan Price') }}</label>
                            <input type="number" class="form-control" name="price" id="price" required placeholder="{{ __('Plan Price') }}" value="{{old('price')}}">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="price">{{ __('Expire in days') }}</label>
                            <input type="number" class="form-control" name="days" id="days" required placeholder="{{ __('Expire in days') }}" value="{{old('days')}}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="price">{{ __('Seller Contact Limit') }}</label>
                            <input type="number" class="form-control" name="contact_limit" id="contact_limit" required placeholder="{{ __('Seller Contact Limit') }}" value="{{old('Seller Contact Limit')}}">
                        </div>
                    </div>

                    
                </div>
                
                <div class="form-group">
                    <label for="description">{{ __('Description') }}</label>
                    <textarea id="area1" class="form-control summernote" name="description" placeholder="{{ __('Description') }}" >{{old('description')}}</textarea>
                </div>


             
                    <div class="form-group">
                        <label>{{ __('Status') }}</label>
                        <select class="form-control  mb-3"  name="status" required>
                            <option value="1">{{__('Active')}}</option>
                            <option value="0">{{__('Inactive')}}</option>
                        </select>
                    </div>   
                    
                <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
            </form>
         </div>
      </div>
      <!-- Form Sizing -->
      <!-- Horizontal Form -->
   </div>
</div>
<!--Row-->
@endsection

@push('script')

<script>


</script>

@endpush

