<!-- ============================ Footer Start ================================== -->
<!-- ======================= Newsletter Start ============================ -->
<section class="space bg-cover" >
    <div class="container py-5">
        
        <div class="row justify-content-center">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="sec_title position-relative text-center mb-5">
                    <h6 class=" mb-0">{{ $section->subscribe_title }}</h6>
                    <h2 class="ft-bold">{{ $section->subscribe_subtitle }}</h2>
                </div>
            </div>
        </div>
        
        <div class="row align-items-center justify-content-center">
            <div class="col-xl-7 col-lg-10 col-md-12 col-sm-12 col-12">
                <form  id="subForm" action="{{route('front.subscribe')}}" method="POST" class="subscribe-form">
                    {{ csrf_field() }}
                    <div class="row no-gutters">
                        <div class="col-xl-9 col-lg-9 col-md-8 col-sm-8 col-8">
                            <div class="form-group mb-0 position-relative">
                                <input type="email" name="email" class="form-control subEmail" placeholder="Enter Your Email Address">
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-4">
                            <div class="form-group mb-0 position-relative">
                                <button class="btn full-width btn-height theme-bg text-light fs-md btn-subscribe subBtn" type="submit">@lang('Subscribe')</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
    </div>
</section>
<!-- ======================= Newsletter Start ============================ -->



<footer class="dark-footer skin-dark-footer">
    <div>
        <div class="container">
            <div class="row">
                
                <div class="col-lg-3 col-md-4">
                    <div class="footer-widget">
                        <img src="{{ getPhoto($gs->header_logo) }}" class="img-footer" alt="" />
                        <div class="footer-add">
                            <p>@php
                                echo $fcontact->address;
                            @endphp
                            </p>
                            <p>{{ $fcontact->phone1 }}</p>
                            <p>{{ $fcontact->email1 }}</p>
                        </div>
                        
                    </div>
                </div>		
                <div class="col-lg-2 col-md-4">
                    <div class="footer-widget">
                        <h4 class="widget-title">Navigations</h4>
                        <ul class="footer-menu">
                            <li class="active"><a href="{{ route('home') }}">@lang('Home')<span></span></a></li>
								<li><a href="{{ route('browse.advert.category') }}">@lang('Browse')<span></span></a></li>
								<li><a href="{{ route('plan') }}">@lang('Pricing')<span></span></a></li>
								@foreach ($pages as $menu)
								<li><a href="{{ route('page', $menu->slug) }}">{{ $menu->title }}<span></span></a></li>
								@endforeach
								<li><a href="{{ route('about') }}">@lang('About Us')<span></span></a></li>
								<li><a href="{{ route('contact') }}">@lang('Contact Us')<span></span></a></li>
                        </ul>
                    </div>
                </div>
                

                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget">
                        <h4 class="widget-title">The Highlights</h4>
                        @php
                          $categories = DB::table('categories')->get();
                        @endphp
                        <ul class="footer-menu">
                            @foreach ($categories as $item)
                            @if($item->id ==11)
                            <li><a href="#">@lang('Find Buyers')</a></li>
                            @elseif($item->id ==12)
                            <li><a href="#">@lang('Find Exclusive Deals')</a></li>
                            @elseif($item->id == 13)
                            <li><a href="#">@lang('Properties for Rent')</a></li>
                            @else
                            <li><a href="#">@lang('Find Projects')</a></li>
                            @endif
                            @endforeach
                        </ul>
                    </div>
                </div>
                
                
                
                <div class="col-lg-3 col-md-6">
                    <div class="footer-widget">
                        <h4 class="widget-title">Download Apps</h4>
                        <a href="#" class="other-store-link">
                            <div class="other-store-app">
                                <div class="os-app-icon">
                                    <i class="lni-playstore theme-cl"></i>
                                </div>
                                <div class="os-app-caps">
                                    Google Play
                                    <span>Not it Available</span>
                                </div>
                            </div>
                        </a>
                        <a href="#" class="other-store-link">
                            <div class="other-store-app">
                                <div class="os-app-icon">
                                    <i class="lni-apple theme-cl"></i>
                                </div>
                                <div class="os-app-caps">
                                    App Store
                                    <span>Now it Available</span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    
    <div class="footer-bottom">
        <div class="container">
            <div class="row align-items-center">
                
                <div class="col-lg-6 col-md-6">
                    <p class="mb-0">{{ $gs->copyright_text }}</p>
                </div>
                
                <div class="col-lg-6 col-md-6 text-right">
                    <ul class="footer-bottom-social">
                        @foreach ($social_links as $sl)
                        <li><a href="{{ $sl->link }}"><i class="{{ $sl->icon }}"></i></a></li>
                        @endforeach
                        
                    </ul>
                </div>
                
            </div>
        </div>
    </div>
</footer>
<!-- ============================ Footer End ================================== -->