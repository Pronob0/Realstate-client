@extends('layouts.admin')
@section('breadcrumb')
 <section class="section">
        <div class="section-header">
        <h1>@lang('Logo Settings')</h1>
        </div>
</section>
@endsection
@section('title')
   @lang('Site Logo and Favicon')
@endsection
@section('content')

<div class="row m-0">
    <div class="col-md-4 col-lg-4 col-sm-12">
        <div class="card">
            <div class="card-header">
               <h6 class="text-primary"> @lang('Logo')</h6>
            </div>
            <div class="card-body">
              <form id="" action="{{ route('admin.gs.update') }}" enctype="multipart/form-data" method="POST">
                @csrf
              
                 <div class="form-group d-flex justify-content-center">
                    <div id="image-preview" class="image-preview image-preview_alt"
                        style="background-image:url({{ getPhoto($gs->header_logo) }});">
                        <label for="image-upload" id="image-label">@lang('Choose File')</label>
                        <input type="file" name="header_logo" id="image-upload" />
                    </div>
                 </div>
                   <div class="form-group row">
                    <div class="col-sm-12 text-center">
                      <button type="submit" class="btn btn-primary btn-block">{{ __('Update') }}</button>
                    </div>
                  </div>
              </form>
            </div>
        </div>
    </div>

   
    <div class="col-md-4 col-lg-4 col-sm-12">
      <div class="card mb-4">
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">{{ __('Favicon') }}</h6>
        </div>
        <div class="card-body">
            <form id="" action="{{ route('admin.gs.update') }}" enctype="multipart/form-data" method="POST">
              @csrf
              <div class="form-group d-flex justify-content-center">
                <div id="image-preview1" class="image-preview image-preview_alt"
                    style="background-image:url({{ getPhoto($gs->favicon) }});">
                    <label for="image-upload1" id="image-label">@lang('Choose File')</label>
                    <input type="file" name="favicon" id="image-upload1" />
                </div>
             </div>
             <div class="form-group row">
              <div class="col-sm-12 text-center">
                <button type="submit" class="btn btn-primary btn-block">{{ __('Update') }}</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>



@endsection

@push('script')
    <script>
      'use strict';
      $.uploadPreview({
                input_field: "#image-upload", // Default: .image-upload
                preview_box: "#image-preview", // Default: .image-preview
                label_field: "#image-label", // Default: .image-label
                label_default: "{{__('Choose File')}}", // Default: Choose File
                label_selected: "{{__('Update Image')}}", // Default: Change File
                no_label: false, // Default: false
                success_callback: null // Default: null
            });
        $.uploadPreview({
                input_field: "#image-upload1", // Default: .image-upload
                preview_box: "#image-preview1", // Default: .image-preview
                label_field: "#image-label1", // Default: .image-label
                label_default: "{{__('Choose File')}}", // Default: Choose File
                label_selected: "{{__('Update Image')}}", // Default: Change File
                no_label: false, // Default: false
                success_callback: null // Default: null
            });
        $.uploadPreview({
                input_field: "#image-upload_f", // Default: .image-upload
                preview_box: "#image-preview_f", // Default: .image-preview
                label_field: "#image-label_f", // Default: .image-label
                label_default: "{{__('Choose File')}}", // Default: Choose File
                label_selected: "{{__('Update Image')}}", // Default: Change File
                no_label: false, // Default: false
                success_callback: null // Default: null
            });
    </script>
@endpush