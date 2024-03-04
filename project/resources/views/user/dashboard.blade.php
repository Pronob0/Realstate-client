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
                
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h4>@lang('Your Current Package'): <span class="pc-title theme-cl">{{ auth()->user()->is_plan != Null ? DB::table('plans')->where('id',auth()->user()->is_plan)->first()->title : 'No Plan'  }}</span></h4>
                    </div>
                </div>
                
                <div class="row">
        
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="dashboard-stat widget-1">
                            <div class="dashboard-stat-content"><h4>607</h4> <span>Listings Included</span></div>
                            <div class="dashboard-stat-icon"><i class="ti-location-pin"></i></div>
                        </div>	
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="dashboard-stat widget-2">
                            <div class="dashboard-stat-content"><h4>102</h4> <span>Listings Remaining</span></div>
                            <div class="dashboard-stat-icon"><i class="ti-pie-chart"></i></div>
                        </div>	
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="dashboard-stat widget-3">
                            <div class="dashboard-stat-content"><h4>70</h4> <span>Featured Included</span></div>
                            <div class="dashboard-stat-icon"><i class="ti-user"></i></div>
                        </div>	
                    </div>
                    
                    
                    
                    
                    

                </div>
                
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="card-header" id="Packages">
                          <h2 class="mb-0">
                            <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#extraPackages" aria-expanded="false" aria-controls="extraSer">
                              See Available Packages and Payment Methods
                            </button>
                          </h2>
                        </div>
                        <div id="extraPackages" class="collapse" aria-labelledby="Packages" data-parent="#accordionExample">
                            <div class="row">
                                
                                <!-- Single Package -->
                                <div class="col-lg-4 col-md-4 c-l-sm-12">
                                    <div class="package-box">
                                        <span class="theme-cl">Gold Package</span>
                                        <h4 class="packages-features-title">USD 49 / 1 year</h4>
                                        <ul class="packages-lists-list">
                                            <li>Unlimited listings</li>
                                            <li>100 Featured</li>
                                            <li>Unlimited Images</li>
                                            <li>Help & Support</li>
                                        </ul>
                                        <div class="buypackage">
                                            <div class="switchbtn paying">
                                                <input id="gold" class="switchbtn-checkbox" type="radio" value="2" checked name="package7">
                                                <label class="switchbtn-label" for="gold"></label>
                                            </div>
                                            <span>Switch to this package</span>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- Single Package -->
                                <div class="col-lg-4 col-md-4 c-l-sm-12">
                                    <div class="package-box">
                                        <span class="theme-cl">Premium Package</span>
                                        <h4 class="packages-features-title">USD 39 / 1 year</h4>
                                        <ul class="packages-lists-list">
                                            <li>20 listings</li>
                                            <li>5 Featured</li>
                                            <li>5 Images/ per list</li>
                                            <li>Help & Support</li>
                                        </ul>
                                        <div class="buypackage">
                                            <div class="switchbtn paying">
                                                <input id="premium" class="switchbtn-checkbox" type="radio" value="2" name="package7">
                                                <label class="switchbtn-label" for="premium"></label>
                                            </div>
                                            <span>Switch to this package</span>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- Single Package -->
                                <div class="col-lg-4 col-md-4 c-l-sm-12">
                                    <div class="package-box">
                                        <span class="theme-cl">Standard Package</span>
                                        <h4 class="packages-features-title">USD 10 / 1 year</h4>
                                        <ul class="packages-lists-list">
                                            <li>10 listings</li>
                                            <li>2 Featured</li>
                                            <li>2 Images</li>
                                            <li>Help & Support</li>
                                        </ul>
                                        <div class="buypackage">
                                            <div class="switchbtn paying">
                                                <input id="standard" class="switchbtn-checkbox" type="radio" value="2" name="package7">
                                                <label class="switchbtn-label" for="standard"></label>
                                            </div>
                                            <span>Switch to this package</span>
                                        </div>
                                    </div>
                                </div>
                            
                            </div>
                            
                            <div class="row mt-5">
                                <div class="col-lg-12 col-md-12">
                                    <h4>Payment Method</h4>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <a href="#" class="pay-btn paypal">Pay with PayPal</a>
                                    <a href="#" class="pay-btn stripe">Pay with Stripe</a>
                                    <a href="#" class="pay-btn wire-trans">Wire Transfer</a>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
        
                <div class="dashboard-wraper">
                
                    <!-- Basic Information -->
                    <div class="form-submit">	
                        <h4>@lang('My Account')</h4>
                        <div class="submit-section">
                            <form action="{{ route('user.profile.update') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                               

                                <div class="form-row">

                                    <div class="col-md-12 ShowImage mb-3 text-center">
                                        <img src="{{ asset('assets/images/'. auth()->user()->photo)}}" class="img-fluid w-25" alt="image" width="400">
                                     </div>
                                
                                    <div class="form-group col-md-6">
                                        <label>@lang('Your Name')</label>
                                        <input type="text" class="form-control" name="name" value="{{ auth()->user()->name }}">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                        <label>@lang('Email')</label>
                                        <input type="email" class="form-control" name="email" readonly value="{{ auth()->user()->email }}">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>@lang('Photo')</label>
                                        <input type="file" class="form-control"  id="image" accept="image/*" name="photo">
                                    </div>
    
                                    <div class="form-group col-md-6">
                                        <label>@lang('Phone')</label>
                                        <input type="text" class="form-control" name="phone" value="{{ auth()->user()->phone }}">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                        <label>@lang('Address')</label>
                                        <input type="text" class="form-control" name="address" value="{{ auth()->user()->address }}">
                                    </div>
                                    
                                    <div class="form-group col-md-6">
                                        <label>@lang('City')</label>
                                        <input type="text" class="form-control" name="city" value="{{ auth()->user()->city }}">
                                    </div>
                                
                                    
                                    <div class="form-group col-md-12">
                                        <label>@lang('PostCode')</label>
                                        <input type="text" class="form-control" name="zip" value="{{ auth()->user()->zip }}">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <button class="btn btn-theme" type="submit">@lang('Update Profile')</button>
                                    </div>
                                </div>

                            </form>
                           
                        </div>
                    </div>
                    
                    {{-- <div class="form-submit">	
                        <h4>Social Accounts</h4>
                        <div class="submit-section">
                            <div class="form-row">
                            
                                <div class="form-group col-md-6">
                                    <label>Facebook</label>
                                    <input type="text" class="form-control" value="https://facebook.com/">
                                </div>
                                
                                <div class="form-group col-md-6">
                                    <label>Twitter</label>
                                    <input type="email" class="form-control" value="https://twitter.com/">
                                </div>
                                
                                <div class="form-group col-md-6">
                                    <label>Google Plus</label>
                                    <input type="text" class="form-control" value="https://googleplus.com/">
                                </div>
                                
                                <div class="form-group col-md-6">
                                    <label>LinkedIn</label>
                                    <input type="text" class="form-control" value="https://linkedin.com/">
                                </div>
                                
                                <div class="form-group col-lg-12 col-md-12">
                                    <button class="btn btn-theme" type="submit">Save Changes</button>
                                </div>
                                
                            </div>
                        </div>
                    </div> --}}
                    
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
     $(document).on('change', '#image', function() {
            var file = event.target.files[0];
            var reader = new FileReader();
            reader.onload = function(e) {
                // console.log(e.target.result)
                $('.ShowImage').removeClass('d-none');
                $('.ShowImage img').attr('src', e.target.result);
            };
            reader.readAsDataURL(file);
        })
</script>

@endpush