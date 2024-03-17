<!-- ============================ Property Detail Start ================================== -->
<section class="gray">
    <div class="container">
        <div class="row">
            
            <!-- property main detail -->
            <div class="col-lg-8 col-md-12 col-sm-12">
                
                <div class="d-flex justify-content-between">
                    <div class="street">
                        <p><b>{{$item->street}}</b></p>
                        <p><b>{{$item->region}}</b></p>
                    </div>
                    <div>
                        <p>ID: #000{{$item->id}}</p>
                    </div>
                </div>
                
               
                @php
                $photo = explode(',',$item->photo);
            @endphp
                <div class="block-wrap">
                    <img class="img-fluid main" src="{{ asset('assets/images/advertisement/'.$photo[0]) }}" alt="">

                    <div class="row mt-3">
                      
                        <div class="col-md-4" style="cursor: pointer">
                            <img class="img-fluid click" src="{{ asset('assets/images/advertisement/'.$photo[0]) }}" alt="">
                        </div>
                        
                        <div class="col-md-4" style="cursor: pointer">
                            <img class="img-fluid click" src="{{ asset('assets/images/advertisement/'.$photo[1]) }}" alt="">
                        </div>
                        <div class="col-md-4" style="cursor: pointer">
                            <img class="img-fluid click" src="{{ asset('assets/images/advertisement/'.$photo[2]) }}" alt="">
                        </div>
                        
                    </div>
                </div>

                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">@lang('Property Description')</h4>
                    </div>
                    
                    <div class="block-body">
                        <p class="text-justify">
                            {!! $item->description !!}
                        </p>
                    </div>
                    
                </div>
                
                <!-- Single Block Wrap -->
                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">@lang('Property Information')</h4>
                    </div>
                    
                    <div class="block-body">
                       
                        <table class="table table-light table-striped">
                            <tbody>
                                <tr>
                                    <td>@lang('Property Type')</td>
                                    <td>{{ $item->property_type==null ? 'No' :  $item->property_type }}</td>
                                </tr>
                                
                                <tr>
                                    <td>@lang('Bedrooms')</td>
                                    <td>{{ $item->bedroom==null ? 0 :  $item->bedroom }}</td>
                                </tr>
                                <tr>
                                    <td>@lang('Bathrooms')</td>
                                    <td>{{ $item->bathroom==null ? 0 :  $item->bathroom }}</td>
                                </tr>
                                <tr>
                                    <td>@lang('Reception')</td>
                                    <td>{{ $item->reception==null ? 0 :  $item->reception }}</td>
                                </tr>
                                <tr>
                                    <td>@lang('Nearest Train Station')</td>
                                    <td>{{ $item->train_station==null ? 0 :  $item->train_station }}</td>
                                </tr>
                                <tr>
                                    <td>@lang('HMO Licence Permitted:')</td>
                                    <td>{{ $item->hmo==null ? 0 :  $item->hmo }}</td>
                                </tr>
                               
                                
                                
                            
                                @if($item->furnished !=null)
                                <tr>
                                    <td>@lang('Furnished')</td>
                                    <td>{{ $item->furnished==null ? 'No' :  $item->furnished }}</td>
                                </tr>
                                @endif
                            
                            </tbody>
                        </table>
                    </div>
                    
                </div>
                
                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">@lang('Ameneties Available')</h4>
                    </div>
                    
                    <div class="block-body">
                        <ul class="avl-features third">
                            @foreach (explode(',', $item->amenities) as $amn)
                            <li>{{ $amn }}</li>
                            @endforeach
                        </ul>
                    </div>
                    
                </div>

                {{-- cost info  --}}
                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">@lang('Financial Information')</h4>
                    </div>
                    @php
                        $cost = json_decode($item->cost,true);
                        $txt ='(per month)'
                    @endphp
                  
                    <div class="block-body">
                       
                        <table class="table table-light table-striped">
                            <tbody>
                                <tr>
                                    <td>@lang('Purchase Price')</td>
                                    <td>{{ $currency->sign }} {{ $item->sale==null ? '0' :  $item->sale }} </td>
                                </tr>
                                <tr>
                                    <td>@lang('Strategy')</td>
                                    <td>{{ $item->strategy==null ? 'No' :  $item->strategy }}</td>
                                </tr>
                                @foreach ($cost as $key=>$value)
                                <tr>
                                    <td>{{ $key=='rent_pm' ? 'Current Rent' : ucfirst(str_replace('_',' ',$key )) }}</td>
                                    <td>{{ $currency->sign }} {{ $value }} </td>
                                </tr>
                                @endforeach
                                
                                
                                
                                <tr>
                                    <td>@lang('Gross Yeild')</td>
                                    <td>{{ $item->gross }}%</td>
                                </tr>
                                
                                
                                <tr>
                                    <td>@lang('Occupancy')</td>
                                    <td>{{ $item->occupancy }}</td>
                                </tr>
                                
                                <tr>
                                    <td>@lang('Current Condition')</td>
                                    <td>{{ $item->condition }}</td>
                                </tr>
                                <tr>
                                    <td>@lang('Market Valuation')</td>
                                    <td>{{ $currency->sign }} {{ $item->market_valuation }}</td>
                                </tr>
                               
                                
                            </tbody>
                        </table>
                    </div>
                    
                </div>
                
                <!-- Single Block Wrap -->
               
                
                <!-- Single Block Wrap -->
                
                 {{-- end  --}}

                 <!-- Single Block Wrap -->
							<div class="block-wrap">
								
								<div class="block-header">
									<h4 class="block-title">@lang('Floor Plan')</h4>
								</div>
								
								<img src="{{ asset('assets/images/floor/'.$item->floor_pic) }}" class="img-fluid" alt="" />
								
							</div>
               
                
                
                
            </div>
            
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
