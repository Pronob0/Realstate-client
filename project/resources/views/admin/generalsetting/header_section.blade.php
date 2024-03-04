@extends('layouts.admin')
@section('title')
    @lang('All Header Section')
@endsection

@section('breadcrumb')
    <section class="section">
        <div class="section-header  d-flex justify-content-between">
            <h1>@lang('Hero')</h1>
            <a href="{{ route('admin.dashboard') }}" class="btn btn-primary"><i class="fas fa-backward"></i>
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
                    <h6 class="m-0 font-weight-bold text-primary">{{ __('Update Header Section') }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.header.section.update') }}" enctype="multipart/form-data" method="POST">
                        @csrf
                        <div class="form-group">
                            <label for="title">{{ __('Room Section Title') }}</label>
                            <input type="text" class="form-control" name="room_title" id="title" required
                                placeholder="{{ __('Room Section Title') }}" value="{{ $section->room_title }}">
                        </div>


                        <div class="form-group">
                            <label for="title">{{ __('Room Section Subtitle') }}</label>
                            <input type="text" class="form-control" name="room_subtitle" id="title" required
                                placeholder="{{ __('Room Section Subtitle') }}" value="{{ $section->room_subtitle }}">
                        </div>


                        <div class="form-group">
                            <label for="title">{{ __('Distress Deal Title') }}</label>
                            <input type="text" class="form-control" name="distress_title" id="title" required
                                placeholder="{{ __('Distress Deal Title') }}" value="{{ $section->distress_title }}">
                        </div>

                        <div class="form-group">
                            <label for="title">{{ __('Distress Deal Subtitle') }}</label>
                            <input type="text" class="form-control" name="distress_subtitle" id="title" required
                                placeholder="{{ __('Distress Deal Subtitle') }}" value="{{ $section->distress_subtitle }}">
                        </div>
                        
                        <div class="form-group">
                            <label for="title">{{ __('Find Buyer Title') }}</label>
                            <input type="text" class="form-control" name="buyer_title" id="title" required
                                placeholder="{{ __('Find Buyer Title') }}" value="{{ $section->buyer_title }}">
                        </div>

                        <div class="form-group">
                            <label for="title">{{ __('Find Buyer Subtitle') }}</label>
                            <input type="text" class="form-control" name="buyer_subtitle" id="title" required
                                placeholder="{{ __('Find Buyer Subtitle') }}" value="{{ $section->buyer_subtitle }}">
                        </div>

                        <div class="form-group">
                            <label for="title">{{ __('Blog Section Title') }}</label>
                            <input type="text" class="form-control" name="blog_title" id="title" required
                                placeholder="{{ __('Blog Title') }}" value="{{ $section->blog_title }}">
                        </div>

                        <div class="form-group">
                            <label for="title">{{ __('BLog Section Subtitle') }}</label>
                            <input type="text" class="form-control" name="blog_subtitle" id="title" required
                                placeholder="{{ __('Blog Subtitle') }}" value="{{ $section->blog_subtitle }}">
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
    
@endpush