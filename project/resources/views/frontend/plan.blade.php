@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ Page Title Start================================== -->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                
                <h2 class="ipt-title">@lang('See our packages')</h2>
                <span class="ipn-subtitle">@lang('Lists of our all Popular agencies')</span>
                
            </div>
        </div>
    </div>
</div>
<!-- ============================ Page Title End ================================== -->

<!-- ============================ Agency List Start ================================== -->
<section>
			
    <div class="container">
    
        <div class="row">
            <div class="col text-center">
                <div class="sec-heading center">
                    <h2>@lang('See our packages')</h2>
                    <p>@lang('We offer best and smart packages for you.')</p>
                </div>
            </div>
        </div>
        
        <div class="row">
        
            <!-- Single Package -->
            @foreach ($plans as $plan)
            <div class="col-lg-4 col-md-4">
                <div class="pricing-wrap">
                    
                    <div class="pricing-header">
                        <i class="lni-layers"></i>
                        <h4 class="pr-title">{{ $plan->title }}</h4>
                        <span class="pr-subtitle">Start With {{ $plan->title }}</span>
                    </div>
                    <div class="pricing-value">
                        <h4 class="pr-value">{{ $plan->price }} {{ $currency->sign }}</h4>
                    </div>
                    <div class="pricing-body">
                        <ul>
                       
                            <li>Status <span class="badge badge-{{ $plan->status==1 ? 'primary' : 'danger' }}"> {{ $plan->status==1 ? 'Active' : 'Inactive' }} </span> </li>
                            <li>{{ $plan->contact_limit }} Seller Contact</li>
                            <li>{{ $plan->days/30 }} Months Validity</li>
                            <li>7x24 Fully Support</li>
                            <li>50GB Space</li>
                        </ul>
                    </div>
                    <div class="pricing-bottom">
                        <button id="planbtn" class="btn-pricing" data-price="{{ $plan->price }}" data-val="{{ $plan->id }}" data-bs-toggle="modal" data-bs-target="#pricingmodal">@lang('Choose Plan')</button>
                    </div>
                    
                </div>
            </div>
            @endforeach
            
            
        </div>
        
    </div>
            
</section>
<!-- ============================ Agency List End ================================== -->
<!-- Modal -->
<div class="modal fade" id="pricingmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">@lang('Pricing Plan')</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
        </div>
        <form action="{{ route('stripe.submit') }}" method="POST">
            @csrf
            <div class="modal-body">
                    <input type="hidden" name="plan_id" id="plan_id">
                    <div class="form-group">
                        <label for="amount">@lang('Amount')</label>
                        <input type="text" id="amount" name="amount"  placeholder="Enter Your Name" readonly class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="name">@lang('Gateway')</label>
                        <input type="text" value="Stripe" placeholder="Stripe" readonly class="form-control">
                    </div>
            </div>
            <div class="modal-footer">
            
            <button type="submit" class="btn btn-primary">@lang('Upgrade')</button>
            </div>

        </form>
      </div>
    </div>
  </div>



@endsection

@push('js')
<script>
    $(document).ready(function(){
        $(document).on('click','#planbtn',function(){
            var price = $(this).data('price');
            var plan_id = $(this).data('val');
            $('#plan_id').val(plan_id);
            $('#amount').val(price);
            $('#pricingmodal').modal('show');
        })

        $('.btn-close').click(function(){
            $('#pricingmodal').modal('hide');
        })
    })
</script>

@endpush

