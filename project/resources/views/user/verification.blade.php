@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ Page Title Start================================== -->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <h2 class="ipt-title">Welcome!</h2>
                <span class="ipn-subtitle">Welcome To Your Account</span>

            </div>
        </div>
    </div>
</div>
<!-- ============================ Page Title End ================================== -->

<!-- ============================ User Dashboard ================================== -->
<section>
    <div class="container-fluid">

        <div class="row">

            @include('user.partials.sidebar-user')

            <div class="col-lg-9 col-md-8">

                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h4>@lang('Submit for verification'):</h4>
                    </div>
                </div>

                <div class="dashboard-wraper">

                    <!-- Basic Information -->
                    <div class="form-submit">

                        <div class="submit-section">
                            <form action="{{ route('user.verification.submit') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf

                                <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
                                {{-- qualification in textarea --}}

                                <div class="form-row">

                                    <div class="col-md-6 ShowImage mb-3 text-center">
                                        {{-- label --}}
                                        <label for="image" class="d-none">@lang('NID Image')</label>
                                        <img src="{{ asset('assets/images/'. getPhoto(''))}}" class="img-fluid w-25" alt="image" width="400">
                                    </div>

                                    <div class="col-md-6 ShowImage2 mb-3 text-center">
                                        {{-- label --}}
                                        <label for="image" class="d-none">@lang('Criminal Record')</label>
                                        <img src="{{ asset('assets/images/'. getPhoto(''))}}" class="img-fluid w-25" alt="image" width="400">
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>@lang('NID Number')</label>
                                        <input type="text" class="form-control" name="id_card" value="{{ old('nid') }}">
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>@lang('NID image')</label>
                                        <input type="file" class="form-control" id="image" accept="image/*"
                                            name="id_image">
                                    </div>

                                    <div class="form-group col-md-6">
                                        <label>@lang('Criminal Record image')</label>
                                        <input type="file" class="form-control" id="image2" accept="image/*"
                                            name="criminal_record">
                                    </div>

                                    <div class="form-group col-md-12">
                                        <label>@lang('Qualification')</label>
                                        <textarea class="form-control" name="qualification"rows="5">{{ old('qualification') }}</textarea>
                                    </div>
                                    
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <button class="btn btn-theme" type="submit">@lang('Send Verify
                                            Request')</button>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ============================ User Dashboard End ================================== -->



@endsection

@push('js')

<script>
    $(document).on('change', '#image', function() {
            var file = event.target.files[0];
            var reader = new FileReader();
            reader.onload = function(e) {
                // console.log(e.target.result)
                $('.ShowImage').removeClass('d-none');
                $('.ShowImage img').attr('src', e.target.result);
            };
            reader.readAsDataURL(file);
        })

        $(document).on('change', '#image2', function() {
            var file = event.target.files[0];
            var reader = new FileReader();
            reader.onload = function(e) {
                // console.log(e.target.result)
                $('.ShowImage2').removeClass('d-none');
                $('.ShowImage2 img').attr('src', e.target.result);
            };
            reader.readAsDataURL(file);
        })
</script>

@endpush