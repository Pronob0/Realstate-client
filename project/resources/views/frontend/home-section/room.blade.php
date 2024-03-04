<!-- ============================ Latest Property For Sale Start ================================== -->
<section>
    <div class="container">
    
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="sec-heading center">
                    <h2>{{ $section->room_title }}</h2>
                    <p>{{ $section->room_subtitle }}</p>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="property-slide">
                    
                    @foreach ($rooms as $room)

                    <div class="single-items">
                        <div class="property-listing property-2">
                    
                            <div class="listing-img-wrapper">
                                <div class="list-img-slide">
                                    <div class="click">
                                        @php
                                            $photo = explode(',',$room->photo);
                                        @endphp
                                         @foreach ($photo as $img)
                                        <div><a href="{{ route('advertise.details',$room->id) }}"><img src="{{ asset('assets/images/advertisement/'.$img) }}" class="img-fluid mx-auto" alt="" /></a></div>
                                        @endforeach
                                        
                                    </div>
                                </div>
                                <span class="property-type">{{ $room->subcategory->name }}</span>
                            </div>
                            
                            <div class="listing-detail-wrapper pb-0">
                                <div class="listing-short-detail">
                                    <h4 class="listing-name"><a href="{{ route('advertise.details',$room->id) }}">{{ $room->title }}</a><i class="list-status ti-check"></i></h4>
                                </div>
                            </div>
                            
                            <div class="price-features-wrapper">
                                <div class="listing-price-fx">
                                    <h6 class="listing-card-info-price price-prefix">10,547<span class="price-suffix">/mo</span></h6>
                                </div>
                                <div class="list-fx-features">
                                    <div class="listing-card-info-icon">
                                        <span class="inc-fleat inc-bed">3 Beds</span>
                                    </div>
                                    <div class="listing-card-info-icon">
                                        <span class="inc-fleat inc-bath">1 Bath</span>
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
