<!-- ============================ Latest Property For Sale Start ================================== -->
<section>
    <div class="container">
    
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="sec-heading center">
                    <h2>{{ $section->distress_title }}</h2>
                    <p>{{ $section->distress_subtitle }}</p>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="property-slide">
                    
                   @foreach ($exclusives as $exclusive)

                   @php
                        $photo = explode(',',$exclusive->photo);
                    @endphp
                   <div class="single-items">
                    <div class="property-listing property-2">
                
                        <div class="listing-img-wrapper">
                            <div class="list-img-slide">
                                <div class="click">
                                    @foreach ($photo as $img)
                                    <div><a href="{{ route('advertise.details',$exclusive->id) }}"><img src="{{ asset('assets/images/advertisement/'.$img) }}" class="img-fluid mx-auto" alt="" /></a></div>
                                    @endforeach
                                   
                                    
                                </div>
                            </div>
                            <span class="property-type">{{ $exclusive->subcategory->name }}</span>
                        </div>
                        
                        <div class="listing-detail-wrapper pb-0">
                            <div class="listing-short-detail">
                                <h4 class="listing-name"><a href="{{ route('advertise.details',$exclusive->id) }}">{{ $exclusive->title }}</a><i class="list-status ti-check"></i></h4>
                            </div>
                        </div>
                        
                        <div class="price-features-wrapper">
                            <div class="listing-price-fx">
                                <h6 class="property_add">{{ $exclusive->street }}</h6>
                            </div>
                            <div class="list-fx-features">
                                <div class="listing-card-info-icon">
                                    <small class=""><b>property type: </b>{{ $exclusive->property_type }} </small>
                                </div>
                                <div class="listing-card-info-icon">
                                    <small class="">Houses</small>
                                </div>
                                @php
                                $cost = json_decode($exclusive->cost,true);
                            @endphp
                                <div class="listing-card-info-icon">
                                    <small class=""> <b>Rent pm:</b> {{ $cost['potential_rent']  }} {{ $currency->sign }}</small>
                                </div>
                                <div class="listing-card-info-icon">
                                    <small class=""><b>Bedroom:</b>{{ $exclusive->bedroom }}</small>
                                </div>
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
