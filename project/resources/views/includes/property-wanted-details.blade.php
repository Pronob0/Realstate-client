<!-- ============================ Property Detail Start ================================== -->
<section class="gray">
    <div class="container">
        <div class="row">
            
            <!-- property main detail -->
            <div class="col-lg-8 col-md-12 col-sm-12">
                
                <div class="slide-property-first mb-4 d-flex justify-content-between">
                    <div class="pr-price-into">
                        <h2><i> {{ $item->title }}</i></h2>
                        
                    </div>
                    <div class="pr-price-info ">
                        <span>Max Budget</span><h5 class="text-center">  {{ $currency->sign }}{{ $item->budget }} </h5>
                    </div>
                </div>

                
                
                <!-- Single Block Wrap -->
                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">Buyer's <small>@lang('(Property Requirements)')</small> </h4>
                    </div>
                    
                    <div class="block-body">
                        <ul class="dw-proprty-info">
                            <li><strong>@lang('Desired Location:')</strong>{{ $item->location }}</li>
                            <li><strong>@lang('Property Required')</strong>{{ $item->property_type==null? $item->plot_usage: $item->property_type }}</li>
                            <li><strong>@lang('Bedrooms')</strong>{{ $item->bedroom==null ? 0 :  $item->bedroom }}</li>
                            <li><strong>@lang('Reception')</strong>{{ $item->reception==null? 'No':  $item->reception }}</li>
                            <li><strong>Bathrooms</strong>{{ $item->bathroom==null ? 0 :  $item->bathroom }}</li>
                             <li><strong>{{ $item->plot_size == null ? 'Ready/Offplan' : 'Area'  }}</strong>{{ $item->plot_size == null ? $item->require : $item->plot_size . ' sqft'  }}</li>
                           
                            
                        </ul>
                    </div>
                    
                </div>
                
                <!-- Single Block Wrap -->
               
                
                <!-- Single Block Wrap -->
                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">@lang('Ameneties Desired')</h4>
                    </div>
                    
                    <div class="block-body">
                        <ul class="avl-features third">
                            @foreach (explode(',', $item->amenities) as $amn)
                            <li>{{ $amn }}</li>
                            @endforeach
                        </ul>
                    </div>
                    
                </div>
                 
                 
                  <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">Buyer's <small>(Finance Information)</small> </h4>
                    </div>
                    
                    <div class="block-body">
                        <ul class="dw-proprty-info">
                            <li><strong>@lang('Cash/Morgage')</strong>{{ $item->buyer_type }}</li>
                            <li><strong>@lang('Max Budget Available')</strong>{{ $item->budget }} {{ $currency->sign }}</li>
                            <li><strong>@lang('Buying for')</strong>{{$item->buying_for}}</li>
                            
                           
                            
                        </ul>
                    </div>
                    
                </div>
                
                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">@lang('Description')</h4>
                    </div>
                    
                    <div class="block-body">
                        <p class="text-justify">
                            {!! $item->description !!}
                        </p>
                    </div>
                    
                </div>
               
                
                
                
            </div>
            
            <!-- property Sidebar -->
             <!-- property Sidebar -->
              <div class="col-lg-4 col-md-12 col-sm-12 ">
                <div class="page-sidebar" style="margin-top: -48px">
                    
                    <!-- slide-property-sec -->

                    <div class="agent-widget mt-3">
                        <div class="agent-title">
                            <div class="agent-photo"><img src="assets/img/user-6.jpg" alt=""></div>
                            <div class="agent-details mb-4">
                                <h4><a href="#">@lang('Share with')</a></h4>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    <div class="social-share d-flex justify-content-between">
                    <a class="btn btn-primary" style="background-color: #3b5998;font-size: 22px;border-radius: 5px;" href="https://www.addtoany.com/add_to/email?linkurl=https%3A%2F%2Ffamillynest.com%2Frealstate%2Fadvertise%2Fdetails%2F2%2Flatest&linkname=Document&linknote=" role="button"><i class="fa-solid fa-envelope"></i></a>
                     <a class="btn btn-primary" style="background-color: #3b5998;font-size: 22px;border-radius: 5px;" href="https://www.addtoany.com/add_to/facebook?linkurl=https%3A%2F%2Ffamillynest.com%2Frealstate%2Fadvertise%2Fdetails%2F2%2Flatest&linkname=Document&linknote=" role="button"><i class="fa-brands fa-facebook"></i></a>
                     
                     <a class="btn btn-primary " style="background-color: #EF0894;font-size: 22px;border-radius: 5px;" href="https://www.instagram.com/" role="button"><i class="fa-brands fa-instagram"></i></a>
                     
                     <a class="btn btn-dark " style="font-size: 22px;border-radius: 5px;" href="https://www.tiktok.com/" role="button"><i class="fa-brands fa-tiktok"></i></a>
                        </div>
                    </div>

                    @if (auth()->check())
                    @if ($item->user->is_plan != 0 || auth()->user()->is_plan != 0)

                    <div class="agent-widget mt-3">
                        <div class="agent-title">
                            <div class="agent-photo"><img src="{{ getPhoto($item->user->photo) }}" alt=""></div>
                            <div class="agent-details">
                                <h4><a href="{{ route('user.details',$item->user->id) }}">@lang('Posted By')</a></h4>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        
                        <div class="details text-center">
                        <span class="d-block my-2"> Name: {{ $item->user->name }}</span>
                        
                        <span class="d-block my-2"><i class="lni-phone-handset me-2"></i> {{ $item->user->phone }}</span>
                        </div>

                        
                    </div>
                   
                    @endif
                    
                    @endif

                    
 
                    <form action="{{ route('contact.property.user') }}" method="Post">
               @csrf
                    <div class="agent-widget mt-3">
                        <div class="agent-title mb-5 mt-2">
                            
                            <div class="agent-details">
                                <h4><a href="#">@lang('Contact Here')</a></h4>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                       
                        <input type="hidden" name="property_id" value="{{ $item->id }}">
                        <input type="hidden" name="owner_id" value="{{ $item->user->id }}">

                        <div class="form-group">
                            <input type="text" readonly value="{{ auth()->user() ? auth()->user()->email: '' }}" class="form-control" placeholder="Your Email" name="email">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Phone" name="phone">
                        </div>
                        <div class="form-group">
                            <textarea name="message" class="form-control">I'm interested in this property.</textarea>
                        </div>

                        @if($gs->recaptcha == 1)
                                            <div class="form-input mb-3">
                                                 {!! NoCaptcha::display() !!}
                                                 {!! NoCaptcha::renderJs() !!}
                                                 @error('g-recaptcha-response')
                                                 <p class="my-2">{{$message}}</p>
                                                 @enderror
                                             </div>
                                @endif
                        <button type="submit" class="btn btn-theme full-width">Send Message</button>
                    </div>
                    
                </form>
                
                </div>
            </div>
            
        </div>
    </div>
</section>
<!-- ============================ Property Detail End ================================== -->
