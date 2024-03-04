<div class="search-header-banner">
    <div class="container">
        <div class="full-search-2 transparent mt-5">
           
            <div class="hero-search-content">
                <form action="{{ route('browse.advert',['slug'=>$category->slug, 'type'=>'buy']) }}" method="get">
              
                
                <div class="row">

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <input type="number" class="form-control" name="budget" placeholder="Maximum Budget">
                                <i class="ti-money"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="property_type">
                                    <option value="">@lang('Property Type')</option>
                                    @foreach($subs as $sub)
                                    <option value="{{ $sub->id }}">{{ $sub->name }}</option>
                                    @endforeach
                                    
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="buyer_type">
                                    <option value="">@lang('Finance Source')</option>
                                    <option value="cash">@lang('Cash')</option>
                                    <option value="mortgage">@lang('Mortgage')</option>
                                    <option value="mix">@lang('Mix')</option>
                                    
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="buying_for">
                                    <option value="">@lang('Buying For')</option>
                                    <option value="living">@lang('Living')</option>
                                    <option value="investment">@lang('Investment')</option> 
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                </div>
                
                <div class="row d-flex justify-content-between">
                    
                    <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="form-group">
                            <button type="submit" class="btn btn-theme-light w-100">@lang('Search')</button>

                            
                        </div>
                    </div>
                    
                </div>
            </form> 
            </div>
        </div>
    </div>
</div>



<!-- =========================== All Property =============================== -->
<section>

    <div class="container">
    
        
        
        <div class="row">

            @foreach ($items as $item)
            <!-- Single Property Start -->
            <div class="col-lg-4 col-md-6">
                <div class="property_item classical-list">
                    <div class="image">
                        <a href="single-property-3.html">
                            {{-- <img src="assets/img/p-1.jpg" alt="latest property" class="img-fluid"> --}}
                        </a>
                    </div>
                    <div class="proerty_content">
                        <div class="proerty_text">
                          <!--<h3 class="captlize"><a href="{{ route('advertise.details',$item->id) }}">{{ $item->title }}</a></h3>-->
                          <p class="proerty_price text-center"> <span class="d-block">@lang('Maximum Budget')</span> {{ $currency->sign }} {{ $item->budget }}</p>
                        </div>
                        <p class="property_add mt-3"><b>Desired Location: </b>{{ $item->location }}</p>
                        <div class="property_meta"> 
                          <div class="list-fx-features">
                              <div class="listing-card-info-icon">
                                     <small class="d-block"><b>Buying for: </b></small>
                                     <small class="">{{ $item->buying_for == 'living' ? 'Living' : 'Investment' }}</small>
                                </div>
                              <div class="listing-card-info-icon" >
                                    
                                    <small class="d-block"><b>Property Required: </b></small>
                                    <small class="">{{ $item->property_type == null ? 'Land' : $item->property_type }} </small>
                                    
                                </div>
                            
                                <div class="listing-card-info-icon">
                                    <small class="d-block"><b>Bedroom:</b></small>
                                    <small class="">{{ $item->bedroom==null ? 0 : $item->bedroom }}</small>
                                    
                                </div>

                                <div class="listing-card-info-icon">
                                    <small class="d-block"><b>Finance Source: </b></small>
                                    <small class="">{{ $item->buyer_type }}</small>
                                   
                                </div>
                            </div>  
                        </div>
                        <div class="property_links">
                            <a href="{{ route('advertise.details',$item->id) }}" class="btn btn-theme-light w-100">@lang('More Detail')</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Property End -->
                
            @endforeach
        </div>

       {{-- custom pagination link  --}}

         <div class="row">
              <div class="col-md-12">
                <div class="d-flex justify-content-center">
                     {{ $items->links('paginate') }}
                </div>
              </div>
         </div>
        
    </div>
            
</section>
<!-- =========================== All Property =============================== -->
