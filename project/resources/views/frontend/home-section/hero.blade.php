<!-- ============================ Hero Banner  Start================================== -->
<div class="image-cover hero-banner" style="background:url({{ getPhoto($gs->hero_banner) }}) no-repeat;" data-overlay="6">
    <div class="container">
        
        <h1 class="big-header-capt mb-0">{{ $gs->hero_title }}</h1>
        <p class="text-center mb-5">{{ $gs->hero_text }}</p>
        
        <div class="full-search-2 eclip-search italian-search hero-search-radius">
            <div class="hero-search-content">
                
                <div class="row">
                
                    <div class="col-lg-5 col-md-5 col-sm-12 small-padd">
                        <div class="form-group">
                            <div class="input-with-icon">
                                <input type="text" class="form-control b-r" placeholder="Area Or Post/Zip">
                                <i class="ti-search"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-5 col-md-5 col-sm-12 small-padd">
                        <div class="form-group">
                            <div class="input-with-icon b-l b-r">
                                <select id="location" class="form-control">
                                    @foreach ($category as $cate)
                                    <option value="{{ $cate->id }}">{{ $cate->name }}</option>
                                    @endforeach
                                   
                                    
                                </select>
                                <i class="ti-location-pin"></i>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-2 col-md-2 col-sm-12 small-padd">
                        <div class="form-group">
                            <a href="#" class="btn search-btn">@lang('Search')</a>
                        </div>
                    </div>
                    
                </div>
                
            </div>
        </div>
            
    </div>
</div>
<!-- ============================ Hero Banner End ================================== -->
