@extends('layouts.admin')
@section('title')
   @lang('Edit PaymentGateway')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header  d-flex justify-content-between">
        <h1>@lang('Edit PaymentGateway')</h1>
        <a href="{{route('admin.gateway.index')}}" class="btn btn-primary"><i class="fas fa-backward"></i> @lang('Back')</a>
    </div>
</section>
@endsection
@section('content')

<div class="row justify-content-center">
   <div class="col-md-12">
      <!-- Form Basic -->
      <div class="card mb-4">
         <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">{{ __('Edit PaymentGateway') }}</h6>
         </div>
         <div class="card-body">
           
            <form action="{{route('admin.gateway.update',$gateway->id)}}"  method="POST">
                @csrf
                @method('PUT')

                @if($gateway->type == 'automatic')


                <div class="form-group">
                  <label for="inp-name">{{ __('Name') }}</label>
                  <input type="text" class="form-control" id="inp-name" name="name"  placeholder="{{ __('Enter Name') }}" value="{{ $gateway->name }}" required>
                </div>
    
    
                @if($gateway->information != null)
    
                  @foreach($gateway->convertAutoData() as $pkey => $pdata)
    
                  @if($pkey == 'sandbox_check')
    
                    <div class="form-group">
                      <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="pkey[{{ __($pkey) }}]" class="custom-control-input" {{ $pdata == 1  ? 'checked' : '' }} id="{{ $pkey }}">
                        <label class="custom-control-label" for="{{ $pkey }}">
                          {{ __( $gateway->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}
                        </label>
                      </div>
                    </div>
    
    
                  @else
    
                  <div class="form-group">
                    <label for="inp-{{ __($pkey) }}">{{ __( $gateway->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}</label>
                    <input type="text" class="form-control" id="inp-{{ __($pkey) }}" name="pkey[{{ __($pkey) }}]"  placeholder="{{ __( $gateway->name.' '.ucwords(str_replace('_',' ',$pkey)) ) }}" value="{{ $pdata }}" required>
                  </div>
    
    
                  @endif
    
                  @endforeach
    
                @endif
    
                @else
               
                <div class="form-group">
                    <label for="title">{{ __('Title') }}</label>
                    <input type="text" class="form-control" name="title" id="title" required placeholder="{{ __('Title') }}" value="{{$gateway->title}}">
                </div>

                <div class="form-group">
                    <label for="subtitle">{{ __('Subtitle') }}</label>
                    <input type="text" class="form-control" id="subtitle" name="subtitle" placeholder="{{ __('Enter Subtitle') }}" value="{{ $gateway->subtitle }}" required>
                  </div>
            
                
                 @if($gateway->keyword == null)
                <div class="form-group">
                    <label for="description">{{ __('Description') }}</label>
                    <textarea id="area1" class="form-control " name="details" placeholder="{{ __('Description') }}" >{{ $gateway->details}}</textarea>
                </div>
                @endif

            @endif


                <div class="form-group">
                    <label>{{ __('Status') }}</label>
                    <select class="form-control  mb-3"  name="status" required>
                        <option value="1" {{$gateway->status == 1 ? 'selected':''}}>{{__('Active')}}</option>
                        <option value="0" {{$gateway->status == 0 ? 'selected':''}}>{{__('Inactive')}}</option>
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

