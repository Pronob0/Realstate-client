@extends('layouts.admin')
@section('title')
   @lang('SEO Update')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header  d-flex justify-content-between">
        <h1>@lang('SEO Update')</h1>
        <a href="{{route('admin.seo.index')}}" class="btn btn-primary"><i class="fas fa-backward"></i> @lang('Back')</a>
    </div>
</section>
@endsection
@section('content')

<div class="row justify-content-center">
   <div class="col-md-12">
      <!-- Form Basic -->
      <div class="card mb-4">
         <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">{{ __('SEO Setting') }}</h6>
         </div>
         <div class="card-body">
           
            <form action="{{route('admin.seo.update')}}" enctype="multipart/form-data" method="POST">
                @csrf
                <div class="col-md-12 ShowImage mb-3  text-center">
                    <img src="{{ getPhoto($seo->meta_image) }}" class="img-fluid" alt="image" width="400">
                 </div>
                <div class="form-group">
                    <label for="title">{{ __('Meta Title') }}</label>
                    <input type="text" class="form-control" name="title" id="title" required placeholder="{{ __('Meta Title') }}" value="{{$seo->title}}">
                </div>

                
            
                <div class="row">
                    

                    
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="image">{{ __('Meta Image') }}</label>
                            <span class="ml-3">{{ __('(Extension:jpeg,jpg,png)') }}</span>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="meta_image" id="image" accept="image/*" required>
                                <label class="custom-file-label" for="image">{{ __('Choose file') }}</label>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="description">{{ __('Meta Description') }}</label>
                    <textarea id="area1" class="form-control summernote" name="meta_description" placeholder="{{ __('Meta Description') }}" >{{$seo->meta_description}}</textarea>
                </div>

               

                <div class="form-group">
                    <label for="tags">{{ __('Tags') }}</label>
                    <input type="text" class="form-control" name="meta_tag[]" id="tags" placeholder="{{ __('Tags') }}" value="{{old('tags')}}">
                </div>


                <div class="form-group">
                    <label for="description">{{ __('Google Analytics') }}</label>
                    <textarea id="description" class="form-control summernote" name="google_analytics" placeholder="{{ __('Google Analytics') }}" >{{$seo->google_analytics}}</textarea>
                </div>

                <div class="form-group">
                    <label for="facebook_pixel">{{ __('facebook Pixel') }}</label>
                    <input type="text" class="form-control" name="facebook_pixel" id="facebook_pixel" required placeholder="{{ __('Facebook Pixel') }}" value="{{$seo->facebook_pixel}}">
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
    $(document).ready(function() {
       $('#tags').tagify();
      
    });

</script>

@endpush

