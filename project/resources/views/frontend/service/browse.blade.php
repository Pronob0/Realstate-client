@extends('layouts.front')

@push('css')

@endpush

@section('content')
<div class="search-header-banner">
    <div class="container">
        <div class="full-search-2 transparent mt-5">

            <div class="hero-search-content">
                <form action="" method="get">

                    <div class="row">

                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <div class="form-group">
                                <div class="input-with-icon">
                                    <select id="cities" class="form-control" name="subcategory">
                                        <option value="">@lang('Select Type')</option>
                                      

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

<!-- =========================== All Property =============================== -->
<section>

    <div class="container">
    
            @foreach ($services as $item)
            <div class="row my-3">

                <div class="card w-100">
                    <div class="card-body ">
                        {{-- user photo and name  --}}
                       
                            <div class="d-flex justify-content-between">
                                <div class="mr-2 d-flex">
                                    @php
                                        $user =DB::table('users')->where('id', $item->user_id)->first();
                                    @endphp
                                    @if ($user)
                                    <img src="{{ getPhoto($user->photo) }}" alt="user photo" class="img-fluid" style="width: 50px; height: 50px; border-radius: 50%;">
                                    <p class="mt-2" style="font-size: 12px;">{{ $user->name }}</p>
                                    @else
                                    <img src="{{ asset('assets/front/img/user.png') }}" alt="user photo" class="img-fluid" style="width: 50px; height: 50px; border-radius: 50%;">
                                    <h5>Admin</h5>
                                    @endif
                                    
                                </div>
                                <div>
                                    {{-- budget  --}}
                                    <h6>{{ $item->budget }} {{ $currency->sign }} </h6>
                                </div>
                            </div>

                            <div class="title mt-3">
                                {{-- title  --}}
                            <h6 class="card-title" >{{ $item->title }}</h6>
                            {{-- description  --}}
                            </div>

                            <div class="d-flex justify-content-between">
                                <div class="w-75">
                                    <p class="card-text" style="font-size: 14px; font-weight:400; color: #6c757d;">
                                        {{-- str limit  --}}
                                        {!! Str::limit($item->description, 600) !!}
                                    </p>
                                </div>
                                <div>
                                    <a href="{{ route('service.details',$item->id) }}" class="btn btn-theme-light btn-sm">@lang('View Details')</a>
                                </div>
                            </div>
                    </div>
                </div>
            
            </div>
            @endforeach
        

       {{-- custom pagination link  --}}

         <div class="row">
              <div class="col-md-12">
                <div class="d-flex justify-content-center">
                     {{ $services->links('paginate') }}
                </div>
              </div>
         </div>
        
    </div>
            
</section>
<!-- =========================== All Property =============================== -->

<!-- =========================== All Property =============================== -->
@endsection

@push('js')

@endpush