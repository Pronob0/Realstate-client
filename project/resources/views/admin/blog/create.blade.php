@extends('layouts.admin')
@section('title')
   @lang('Add New Blog')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header  d-flex justify-content-between">
        <h1>@lang('Add New Blog')</h1>
        <a href="{{route('admin.blog.index')}}" class="btn btn-primary"><i class="fas fa-backward"></i> @lang('Back')</a>
    </div>
</section>
@endsection
@section('content')

<div class="row justify-content-center">
   <div class="col-md-12">
      <!-- Form Basic -->
      <div class="card mb-4">
         <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">{{ __('Add New Blog Form') }}</h6>
         </div>
         <div class="card-body">
           
            <form action="{{route('admin.blog.store')}}" enctype="multipart/form-data" method="POST">
                @csrf
                <div class="col-md-12 ShowImage mb-3  text-center">
                    <img src="{{ getPhoto('') }}" class="img-fluid" alt="image" width="400">
                 </div>
                <div class="form-group">
                    <label for="title">{{ __('Blog Title') }}</label>
                    <input type="text" class="form-control" name="title" id="title" required placeholder="{{ __('Blog Title') }}" value="{{old('title')}}">
                </div>
            
                <div class="row">
                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="categorys">{{ __('Category') }}</label>
                            <select class="form-control  mb-3" id="categorys" name="category_id" required>
                                <option value="" selected disabled>{{__('Select Category')}}</option>
                                @foreach ($categories as $item)
                                <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                          </div>        
                    </div>

                    <div class="col-md-6 ">
                        <div class="form-group">
                            <label for="categorys">{{ __('Sub Category') }}</label>

                            <select class="form-control  mb-3" id="sub_categorys" name="subcategory_id" required>
                                <option value="" selected disabled>{{__('Select Sub Category')}}</option>
                            </select>
                            
                          </div>        
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="image">{{ __('Blog Photo') }}</label>
                            <span class="ml-3">{{ __('(Extension:jpeg,jpg,png)') }}</span>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" name="photo" id="image" accept="image/*" required>
                                <label class="custom-file-label" for="photo">{{ __('Choose file') }}</label>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="description">{{ __('Description') }}</label>
                    <textarea id="area1" class="form-control summernote" name="description" placeholder="{{ __('Description') }}" >{{old('description')}}</textarea>
                </div>

                <div class="form-group">
                    <label for="tags">{{ __('Tags') }}</label>
                    <input type="text" class="form-control" name="tags[]" id="tags" placeholder="{{ __('Tags') }}" value="{{old('tags')}}">
                </div>

             
                    <div class="form-group">
                        <label>{{ __('Status') }}</label>
                        <select class="form-control  mb-3"  name="status" required>
                            <option value="1">{{__('Active')}}</option>
                            <option value="0">{{__('Inactive')}}</option>
                        </select>
                    </div>   
                    
                    {{-- checkbox --}}
                    <div class="form-group">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                          <label class="form-check-label" for="invalidCheck2">
                            @lang('Allow SEO')
                          </label>
                        </div>
                      </div>

                      <div class="seo">

                        <div class="form-group">
                            <label for="tags">{{ __('Meta Tags') }}</label>
                            <input type="text" class="form-control" name="meta_tag[]" id="meta_tag" placeholder="{{ __('Meta Tags') }}" value="{{old('meta tags')}}">
                        </div>

                        <div class="form-group">
                            <label for="description">{{ __('Meta Description') }}</label>
                            <textarea id="area2" class="form-control summernote" name="meta_description" placeholder="{{ __('Meta Description') }}" >{{old('meta description')}}</textarea>
                        </div>
                         
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
       $('.seo').hide();
    });
    $(document).ready(function() {
       $('#meta_tag').tagify();
    });

    $('#categorys').change(function(){
        var category_id = $(this).val();
        if(category_id){
            $.ajax({
                type:"GET",
                url:"{{url('admin/blog/get/subcategory')}}/"+category_id,
                success:function(res){               
                    if(res){
                        $("#sub_categorys").empty();
                        $("#sub_categorys").append('<option value="" selected disabled>{{__("Select Sub Category")}}</option>');
                        $.each(res,function(key,value){
                            $("#sub_categorys").append('<option value="'+value.id+'">'+value.name+'</option>');
                        });
                    }else{
                        $("#sub_categorys").empty();
                    }
                }
            });
        }else{
            $("#sub_categorys").empty();
        }
    });



    $('#invalidCheck2').click(function(){
        if($(this).is(':checked')){
            $('.seo').show();
        }else{
            $('.seo').hide();
        }
    });

</script>

@endpush

