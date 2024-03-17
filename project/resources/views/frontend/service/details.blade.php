@extends('layouts.front')

@push('css')

@endpush

@section('content')



<section>

<!-- ============================ Property Detail Start ================================== -->
<section class="gray">
    <div class="container">
        <div class="row">
            
            <!-- property main detail -->
            <div class="col-lg-8 col-md-12 col-sm-12">
                
                <div class="d-flex justify-content-between">
                    <div class="street">
                        <p><b>{{$service->location}}</b></p>
                    </div>
                    <div>
                        <p>ID: #000{{$service->id}}</p>
                    </div>
                </div>

                <div class="block-wrap">
                    <img class="img-fluid main" src="{{ getPhoto($service->photo) }}" alt="">
                </div>

                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">{{ $service->title }}</h4>
                    </div>
                    
                    <div class="block-body">
                        <p class="text-justify">
                            {!! $service->description !!}
                        </p>
                    </div>
                    
                </div>
                
                <!-- Single Block Wrap -->
                <div class="block-wrap">
                    
                    <div class="block-header">
                        <h4 class="block-title">@lang('Job Information')</h4>
                    </div>
                    
                    <div class="block-body">
                       
                        <table class="table table-light table-striped">
                            <tbody>
                                <tr>
                                    <td>@lang('Category')</td>
                                    <td>{{ $service->category->name }}</td>
                                </tr>
                                <tr>
                                    <td>@lang('Region')</td>
                                    <td>{{ $service->region }}</td>
                                </tr>

                                <tr>
                                    <td>@lang('Postcode')</td>
                                    <td>{{ $service->postcode }}</td>
                                </tr>
                                
                                <tr>
                                    <td>@lang('Location')</td>
                                    <td>{{ $service->location }}</td>
                                </tr>
                                <tr>
                                    <td>@lang('Budget')</td>
                                    <td>{{ $service->budget }} {{ $currency->sign }}</td>
                                </tr>
                            
                            </tbody>
                        </table>
                    </div>
                    
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
                    @if ($service->user->is_plan != 0 || auth()->user()->is_plan != 0)

                    <div class="agent-widget mt-3">
                        <div class="agent-title">
                            <div class="agent-photo"><img src="{{ getPhoto($service->user->photo) }}" alt=""></div>
                            <div class="agent-details">
                                <h4><a href="{{ route('user.details',$service->user->id) }}">@lang('Posted By')</a></h4>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        
                        <div class="details text-center">
                        <span class="d-block my-2"> Name: {{ $service->user->name }}</span>
                        
                        <span class="d-block my-2"><i class="lni-phone-handset me-2"></i> {{ $service->user->phone }}</span>
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

                       <input type="hidden" name="is_service" value="1">
                        <input type="hidden" name="property_id" value="{{ $service->id }}">
                        <input type="hidden" name="owner_id" value="{{ $service->user->id }}">

                        <div class="form-group">
                            <input type="text" readonly value="{{ auth()->user() ? auth()->user()->email: '' }}" class="form-control" placeholder="Your Email" name="email">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Phone" name="phone">
                        </div>
                        <div class="form-group">
                            <textarea name="message" class="form-control">I'm interested in this job.</textarea>
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



</section>

@endsection

@push('js')

<script>
    $('.click').click(function(){
        var src = $(this).attr('src');
        $('.main').attr('src',src);
     
    })
</script>

@endpush