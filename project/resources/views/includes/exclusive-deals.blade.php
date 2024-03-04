<div class="search-header-banner">
    <div class="container">
        <div class="full-search-2 transparent mt-5">
           
            <div class="hero-search-content">
                <form action="{{ route('browse.advert',['slug'=>$category->slug, 'type'=>'post']) }}" method="get">
              
                
                <div class="row">

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="subcategory">
                                    <option value="">@lang('Select Type')</option>
                                    @foreach($subs as $sub)
                                    <option value="{{ $sub->id }}">{{ $sub->name=='Sales'? 'Purchase': 'Rent' }}</option>
                                    @endforeach
                                    
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>

                   
                    
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="region">
                                    <option value="">@lang('Select Region')</option>
                                    <option value="Wales">@lang('Wales')</option> 
                                        <option value="East Midlands">@lang('East Midlands')</option> 
                                        <option value="East of England">@lang('East of England')</option>
                                        <option value="London">@lang('London')</option>
                                        <option value="North East & Cumbria">@lang('North East & Cumbria')</option>
                                        <option value="North West">@lang('North West')</option>
                                        <option value="Northern Ireland">@lang('Northern Ireland')</option>
                                        <option value="Scotland">@lang('Scotland')</option>
                                        <option value="South East">@lang('South East')</option>
                                        <option value="South West">@lang('South West')</option>
                                        <option value="West Midlands">@lang('West Midlands')</option>
                                        <option value="Yorkshire & Humberside">@lang('Yorkshire & Humberside')</option>
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="strategy">
                                    <option value="">@lang('Select Strategy')</option> 
                                    <option value="BTL">BTL</option> 
                                    <option value="FLIP">FLIP</option> 
                                    <option value="HMO">HMO</option> 
                                    <option value="Service Accommodation">Service Accommodation</option> 
                                    <option value="Housing Association">Housing Association</option> 
                                    <option value="SLT">SLT</option> 
                                    
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="property_type">
                                    <option value="">@lang('Property Type')</option>
                                    <option value="Terrance House">Terrance House</option> 
                                    <option value="Semi Detached House">Semi Detached House</option> 
                                    <option value="Detached House">Detached House</option> 
                                    <option value="Apartment">Apartment</option> 
                                    <option value="Block Apartment">Block Apartment</option> 
                                    <option value="Bungalow">Bungalow</option> 
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
    <div class="col-lg-12 col-md-12">
        <div class="property-slide">
            
            @foreach ($items as $item)

            <div class="single-items">
                <div class="property-listing property-2">
                    <div class="listing-img-wrapper">
                        <div class="list-img-slide">
                            <div class="click">
                                @php
                                $photo = explode(',',$item->photo);
                            @endphp
                                 
                                <div><a href="{{ route('advertise.details',$item->id) }}"><img src="{{ asset('assets/images/advertisement/'.$photo[0]) }}" class="img-fluid mx-auto" alt="" /></a></div>
                            </div>
                        </div>
                        
                        <!--<span class="property-type">{{ $item->subcategory->name }}</span>-->
                        <div class="d-flex justify-content-between">
                        <span class="property-type">@lang('Exclusive Deal')</span>
                        <span class="property-typee">@lang('For') {{ $item->subcategory->name }}</span>
                        </div>
                        
                    </div>
                    
                    <div class="listing-detail-wrapper pb-0">
                        <div class="listing-short-detail">
                            <h4 class="listing-name"><a href="{{ route('advertise.details',$item->id) }}"> <b>@lang('Location: ')</b> {{ $item->street }}</a></h4>
                        </div>
                    </div>
                    
                    <div class="price-features-wrapper">
                        
                        <div class="list-fx-features">
                            <div class="listing-card-info-icon">
                                <small class=""><b>@lang('Property Type:') </b></small> <br>
                                <small class="">{{ $item->property_type }} </small>
                            </div>
                            <div class="listing-card-info-icon">
                                <small class=""><b>Region: </b></small> <br>
                                <small class="">{{$item->region}}</small>
                            </div>
                            @php
                            $cost = json_decode($item->cost,true);
                        @endphp
                            <div class="listing-card-info-icon">
                                <small class=""> <b>@lang('Potential Rent:')</b></small> <br>
                                 <small class=""> {{ $currency->sign }}{{ $cost['potential_rent']  }}</small>
                            </div>
                            <div class="listing-card-info-icon">
                                <small class=""><b>Bedroom:</b></small> <br>
                                <small class="">{{ $item->bedroom }}</small>
                            </div>
                        </div> 
                        
                        <div class="property_links w-100">
                        <a href="{{ route('advertise.details',$item->id) }}" class="btn btn-theme-light w-100">@lang('More Detail')</a>
                    </div>
                    </div>
                    
                </div>
            </div>
            @endforeach
        </div>
    </div>
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
