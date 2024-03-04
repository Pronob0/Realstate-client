@extends('layouts.admin')
@section('title')
    @lang('Add New Service')
@endsection

@section('breadcrumb')
    <section class="section">
        <div class="section-header  d-flex justify-content-between">
            <h1>@lang('Hero')</h1>
            <a href="{{ route('admin.hero.page') }}" class="btn btn-primary"><i class="fas fa-backward"></i>
                @lang('Back')</a>
        </div>
    </section>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <!-- Form Basic -->
            <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">{{ __('Update Hero Section') }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.gs.update') }}" enctype="multipart/form-data" method="POST">
                        @csrf
                        <div class="row">
                            <input type="hidden" name="type" value="hero_section">

                            <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                                <label for="">@lang('Hero banner') (w-2400px X h-1600px)</label>
                                <div class="form-group d-flex justify-content-center">
                                    <div id="image-preview" class="image-preview image-preview_alt"
                                        style="background-image:url({{ getPhoto($gs->hero_banner) }});">
                                        <label for="image-upload" id="image-label">@lang('Choose File')</label>
                                        <input type="file" name="hero_banner" id="image-upload" />
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="form-group">
                            <label for="title">{{ __('Hero Title') }}</label>
                            <input type="text" class="form-control" name="hero_title" id="title" required
                                placeholder="{{ __('Hero Title') }}" value="{{ $gs->hero_title }}">
                        </div>
                        
                            <div class="form-group">
                            <label for="sort_text">{{ __('Hero Text') }}</label>
                            <textarea id="area1" class="form-control" name="hero_text" placeholder="{{ __('hero Text') }}"
                                required>{{ $gs->hero_text }}</textarea>
                        </div>

                        

                        <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                    </form>
                </div>
            </div>
            <!-- Form Sizing -->
            <!-- Horizontal Form -->
        </div>
    </div>
    <!--Row-->
@endsection
@push('script')
    <script>
        'use strict';
        $.uploadPreview({
            input_field: "#image-upload", // Default: .image-upload
            preview_box: "#image-preview", // Default: .image-preview
            label_field: "#image-label", // Default: .image-label
            label_default: "{{ __('Choose File') }}", // Default: Choose File
            label_selected: "{{ __('Update Image') }}", // Default: Change File
            no_label: false, // Default: false
            success_callback: null // Default: null
        });
        

    </script>
@endpush