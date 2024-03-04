@extends('layouts.admin')
@section('title')
    @lang('Edit About Section')
@endsection

@section('breadcrumb')
    <section class="section">
        <div class="section-header d-flex justify-content-between">
            <h1>@lang('Edit About Section')</h1>
        </div>
    </section>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-body">

                    <form action="{{ route('admin.about.update') }}" method="POST" enctype="multipart/form-data">
                        @method('PUT')
                        @csrf

                        

                        <div class="form-group">
                            <label>@lang('Header Title')</label>
                            <input class="form-control" type="text" name="header_title"
                                value="{{ $about->header_title }}">
                        </div>
                        <div class="form-group">
                            <label>@lang('Title')</label>
                            <input class="form-control" type="text" name="title" value="{{ $about->title }}">
                        </div>

                        <div class="form-group">
                            <label>@lang('Description')</label>
                            <textarea name="description" class="form-control summernote" rows="4">{{ $about->description }}</textarea>
                        </div>
                        

                        <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--Row-->
@endsection

@push('script')
    <script>

    </script>
@endpush
