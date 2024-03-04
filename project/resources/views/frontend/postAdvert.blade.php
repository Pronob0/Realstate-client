@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ Page Title Start================================== -->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                
                <h2 class="ipt-title">@lang('Post Advertise')</h2>
                <span class="ipn-subtitle">@lang('Lists of our all Popular Categories')</span>
                
            </div>
        </div>
    </div>
</div>
<!-- ============================ Page Title End ================================== -->

<!-- ============================ Agency List Start ================================== -->
<section>

    <div class="container">
    
        <!-- row Start -->
        <div class="row">
        
            <div class="col-lg-7 col-md-7">

                @foreach ($categories as $item)
                <div class="row-post-ad d-flex justify-content-between" >
                    <div class="image-description d-flex" style="align-items: center;">
                            <div class="image">
                                <img  src="{{ getPhoto($item->photo) }}" alt="" />
                            </div>
                            <div class="short">
                                <h4>{{ $item->name }}</h4>
                                
                                <p>@lang('Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perspiciatis optio ut rerum placeat aperiam explicabo omnis minima vitae ratione possimus?')</p>
                            </div>
                    </div>
                    <div class="post-btn" style="align-items: center;">
                        @if($item->id==11)
                        <a href="{{ route('post.advert',['slug'=>$item->slug, 'type'=>'rent']) }}" style="width:120px" class="btn btn-theme">@lang('Rent')</a>
                        <a href="{{ route('post.advert',['slug'=>$item->slug, 'type'=>'buy']) }}" style="width:120px" class="btn btn-theme">@lang('Buying')</a>
                        @else
                        <a href="{{ route('post.advert',['slug'=>$item->slug, 'type'=>'post']) }}" class="btn btn-theme">@lang('Post a free ad')</a>
                        @endif
                        
                    </div>
                </div>
                    
                @endforeach

                

            </div>
            
            <div class="col-lg-5 col-md-5">
                
                
            </div>
            
        </div>
        <!-- /row -->		
        
    </div>
            
</section>
<!-- ============================ Agency List End ================================== -->

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

@endpush