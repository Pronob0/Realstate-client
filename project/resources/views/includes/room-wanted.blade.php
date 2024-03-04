<div class="search-header-banner">
    <div class="container">
        <div class="full-search-2 transparent mt-5">
           
            <div class="hero-search-content">
                
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
                                <select id="cities" class="form-control" name="room_size">
                                    <option value="">&nbsp;</option>
                                    <option value="1">A single room</option>
                                    <option value="2">Double room</option>
                                </select>
                                <i class="ti-briefcase"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <input type="text"  class="form-control" placeholder="Postcode" name="postcode">
                                <i class="ti-money"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <select id="cities" class="form-control" name="gender">
                                    <option value="">&nbsp;</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                               
                            </div>
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
                        
                        {{-- <span class="property-typee">{{ $item->subcategory->name }}</span> --}}
                        </div>
                        
                    </div>
                    
                    <div class="listing-detail-wrapper pb-0">
                        <div class="listing-short-detail">
                            <h4 class="listing-name"><a href="{{ route('advertise.details',$item->id) }}">  {{ $item->title }}</a></h4>
                        </div>
                    </div>
                    
                    <div class="price-features-wrapper">
                        
                        <div class="list-fx-features">
                            <div class="listing-card-info-icon">
                                <small class=""><b>@lang('Budget:') </b></small> <br>
                                <small class="">{{ $currency->sign }}{{ $item->budget }}</small>
                            </div>
                            <div class="listing-card-info-icon">
                                <small class=""><b>Room Sizes: </b></small> <br>
                                <small class="">{{ $item->room_sizes==0 ? 'A single Room' : 'Double Room' }}</small>
                                
                            </div>
                            
                            <div class="listing-card-info-icon">
                                <small class=""> <b>@lang('Accomodation For:')</b></small> <br>
                                <small class="">{{ $item->accomodation_for }}</small>
                                 
                            </div>
                            <div class="listing-card-info-icon">
                                <small class=""><b>@lang('Move From')</b></small> <br>
                                <small class="">{{ $item->move_from }}</small>
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
