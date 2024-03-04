<!-- ============================ Latest Property For Sale Start ================================== -->
<section>
    <div class="container">
    
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="sec-heading center">
                    <h2>{{ $section->buyer_title }}</h2>
                    <p>{{ $section->buyer_subtitle }}</p>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="property-slide">
                    
                    @foreach ($buyers as $buyer)
                    <div class="single-items">
                        <div class="property_item classical-list">
                            <div class="image">
                                <a href="single-property-3.html">
                                    {{-- <img src="assets/img/p-1.jpg" alt="latest property" class="img-fluid"> --}}
                                </a>
                            </div>
                            <div class="proerty_content">
                                <div class="proerty_text">
                                  <h3 class="captlize"><a href="{{ route('advertise.details',$buyer->id) }}">{{ $buyer->title }}</a></h3>
                                  <p class="proerty_price text-center"> <span class="d-block">@lang('Budget')</span> {{ $currency->sign }} {{ $buyer->budget }}</p>
                                </div>
                                <p class="property_add">{{ $buyer->location }}</p>
        
                                
                                <div class="property-type text-center my-4">
                                    <span class="badge badge-success">{{ $buyer->property_type==null ? $buyer->plot_usage : $buyer->property_type }}</span>
                                </div>
                                 
        
        
                                <div class="property_meta"> 
                                  <div class="list-fx-features">
                                      
                                      <div class="listing-card-info-icon">
                                    <small class=""><b>Bedroom: </b>{{ $buyer->bedroom==null ? 0 : $buyer->bedroom }} </small>
                                    
                                </div>
                                <div class="listing-card-info-icon" >
                                    
                                    <small class=""><b>Property Type: </b>{{ $buyer->property_type == null ? 'Land' : $buyer->property_type }}</small>
                                    
                                </div>
                                <div class="listing-card-info-icon">
                                     <small class=""><b>Plot Size: </b>{{ $buyer->plot_size == null ? $buyer->require : $buyer->plot_size . ' sqft'  }}</small>
                                    
                                </div>
                                <div class="listing-card-info-icon">
                                    <small class=""><b>Mortgage/Mixed: </b>{{ $buyer->buyer_type }}</small>
                                   
                                </div>

                                    </div>  
                                </div>
                                <div class="property_links">
        
                                    <a href="{{ route('advertise.details',$buyer->id) }}" class="btn btn-theme-light w-100">@lang('More Detail')</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                   
                    
                    
                    
                </div>
            </div>
        </div>
        
    </div>
</section>
<!-- ============================ Latest Property For Sale End ================================== -->
