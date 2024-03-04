<div class="search-header-banner">
    <div class="container">
        <div class="full-search-2 transparent mt-5">
           
            <div class="hero-search-content">
                
                <div class="row">
                
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <input type="text" class="form-control" placeholder="Neighborhood">
                                <i class="ti-search"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control">
                                    <option value="">&nbsp;</option>
                                    <option value="1">Los Angeles, CA</option>
                                    <option value="2">New York City, NY</option>
                                    <option value="3">Chicago, IL</option>
                                    <option value="4">Houston, TX</option>
                                    <option value="5">Philadelphia, PA</option>
                                    <option value="6">San Antonio, TX</option>
                                    <option value="7">San Jose, CA</option>
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-2 col-md-2 col-sm-6">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <input type="text" class="form-control" placeholder="Minimum">
                                <i class="ti-money"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-2 col-md-2 col-sm-6">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <input type="text" class="form-control" placeholder="Maximum">
                                <i class="ti-money"></i>
                            </div>
                        </div>
                    </div>
                    
                </div>
                
                <div class="collapse" id="advance-search" aria-expanded="false" role="banner">
                
                    <!-- row -->
                    <div class="row">
                    
                        <div class="col-lg-4 col-md-4 col-sm-12">
                            <div class="form-group">
                                <div class="input-with-icon">
                                    <select id="ptypes" class="form-control">
                                        <option value="">&nbsp;</option>
                                        <option value="1">Any Type</option>
                                        <option value="2">For Rental</option>
                                        <option value="3">For Sale</option>
                                    </select>
                                    <i class="ti-briefcase"></i>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-4 col-md-4 col-sm-12">
                            <div class="form-group">
                                <div class="input-with-icon">
                                    <select id="bedrooms" class="form-control">
                                        <option value="">&nbsp;</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <i class="fas fa-bed"></i>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-4 col-md-4 col-sm-12">
                            <div class="form-group">
                                <div class="input-with-icon">
                                    <select id="bathrooms" class="form-control">
                                        <option value="">&nbsp;</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <i class="fas fa-bath"></i>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <!-- /row -->
                </div>
                
                <div class="row d-flex justify-content-between">
                
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="form-group" id="module">
                            <a role="button" class="collapsed" data-toggle="collapse" href="#advance-search" aria-expanded="false" aria-controls="advance-search"></a>
                        </div>
                    </div>
                    
                   
                    
                    <div class="col-lg-4 col-md-4 col-sm-12">
                        <div class="form-group">
                            <a href="#" class="btn search-btn-outline">Search Result</a>
                        </div>
                    </div>
                    
                </div>
                
            </div>
        </div>
    </div>
</div>



<!-- =========================== All Property =============================== -->
<section>

    <div class="container">
    
        <div class="row">
    
       
            
            @foreach ($items as $item)
            <div class="col-lg-4 col-md-4">
            <div class="single-items">
                <div class="property-listing property-2">
                    <div class="listing-img-wrapper">
                        <div class="list-img-slidee">
                            <div class="click">
                                @php
                                $photo = explode(',',$item->photo);
                            @endphp
                                 
                                <div><a href="{{ route('advertise.details',$item->id) }}"><img src="{{ asset('assets/images/advertisement/'.$photo[0]) }}" class="img-fluid mx-auto" alt="" /></a></div>
                            </div>
                        </div>
                        
                       
                        <div class="d-flex justify-content-between">
                        
                        <span class="property-typee">{{ $item->subcategory->name }}</span>
                        </div>
                        
                    </div>
                    
                    <div class="listing-detail-wrapper pb-0">
                        <div class="listing-short-detail">
                            <p class="listing-name"><a href="{{ route('advertise.details',$item->id) }}"> <b>@lang('Location: ')</b> {{ $item->street }}</a></p>
                        </div>
                    </div>
                    
                    <div class="price-features-wrapper">
                        
                        <div class="list-fx-features">
                            <div class="listing-card-info-icon">
                                <small class=""><b>@lang('Property Type:') </b></small> <br>
                                <small class="">{{ $item->property_type }} </small>
                            </div>
                            @php
                                $tenant= json_decode($item->tenant_details);
                            @endphp
                            
                           
                            <div class="listing-card-info-icon">
                                <small class=""><b>Monthly Rent </b></small> <br>
                                {{-- <small class="">{{$tenant['monthly_rent']}}</small> --}}
                                <small class="">{{ $tenant->monthly_rent }} {{ $currency->name }}</small>
                                
                            </div>
                            
                            <div class="listing-card-info-icon">
                                <small class=""> <b>@lang('Move In Date')</b></small> <br>
                                 <small class="">{{ $tenant->date }}</small>
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
        </div>
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
