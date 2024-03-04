@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ Page Title Start================================== -->
<div class="page-title">
  <div class="container">
      <div class="row">
          <div class="col-lg-12 col-md-12">
              
              <h2 class="ipt-title">@lang('Browse Advertise')</h2>
              <span class="ipn-subtitle">@lang('Lists of our all Popular Categories')</span>
              
          </div>
      </div>
  </div>
</div>
<!-- ============================ Page Title End ================================== -->


	<!-- ============================ Submit Property Start ================================== -->
    <section>
			
        <div class="container">
            <div class="row">

              @if (Auth::check())
              <div class="col-lg-12 col-md-12">
                <div class="card">
                  <div class="card-body">
                    <div class="submit-page">
                    
                      <form action="{{ route('advertisement.post') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <!-- Basic Information -->
                        <div class="form-submit">	
                        @if($category->id == 11)
                            <h3>@lang('Property Requirements')</h3>
                        @else
                        <h3>@lang('Property Information')</h3>
                        @endif
                            <div class="submit-section">
                                <div class="form-row">
    
                                  
                                    <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
                                    <input type="hidden" name="category_id" value="{{ $category->id }}">
                                    @if ($type != 'rent')
                                    @if ($category->id == 11)
                                   

                                    <div class="form-group col-md-6">
                                      <label>Select type</label>
                                      <select id="ptypes" class="form-control" name="subcategory_id" required>
                                       <option value="">Select Type</option>
                                      
                                      
                                          <option value="3">@lang('Land')</option>
                                          <option value="4">@lang('Property')</option>
                                         
                                      </select>
                                    </div>
                                         
                                    @else
                                    <div class="form-group col-md-6">
                                      <label>Select type</label>
                                      <select id="ptypes" class="form-control" name="subcategory_id" required>
                                       <option value="">Select Type</option>
                                          @foreach ($subCategories as $subcategory)
                                          <option value="{{ $subcategory->id }}">{{ $subcategory->name }}</option>
                                          @endforeach
                                      </select>
                                    </div>
                                    @endif
                                    @endif

                                    <div class="form-group col-md-6">
                                        <label>Advert Title<a href="#" class="" data-tip="Property Title"></a></label>
                                        <input type="text" class="form-control" name="title" placeholder="Enter Title">
                                    </div>

                                    @if ($category->id == 11)
                                    @if($type == 'rent')
                                    @include('frontend.addPost.room-wanted')
                                    @elseif($type == 'buy')
                                    @include('frontend.addPost.find-buyer')
                                    @endif
                                    @endif

                                    @if ($category->id == 12)
                                    @include('frontend.addPost.exclusive-deals')
                                    @endif


                                    @if ($category->id == 13)
                                    @include('frontend.addPost.room-rent')
                                    @endif
    
                                </div>
                            </div>
                        </div>        
                        <!-- Location -->
                        {{-- attributes --}}
    
                        <div class="row my-4" id="ifield" style="margin-left: 10px">
                        </div>
                         <div class="form-group col-lg-12 col-md-12">
                        @if($category->id == 11)
                          <label for="textarea">Additional Requirements</label>
                          @else
                          <label for="textarea">Additional Information</label>
                          @endif
                          
                          <textarea class="form-control" id="textarea" name="description" rows="5"></textarea>
                        </div>
    
    
                      
                        
                        <div class="form-group col-lg-12 col-md-12">
                            <button class="btn btn-theme" type="submit">Submit & Preview</button>
                        </div>
                      </form>         
                    </div>
                  </div>
                </div>
               
              </div>

              @else
                
                
                <!-- Submit Form -->
               
                <div class="col-lg-12 col-md-12">
                
                  <div class="alert alert-success text-center" role="alert">
                  <p>Please, Sign In before you submit a property. If you don't have an account you can create one </p>
                  </div>
              
              </div>
              @endif
                
            </div>
        </div>
                
    </section>
    <!-- ============================ Submit Property End ================================== -->
    

@endsection

@push('js')
<script>
    
    $(document).ready(function() {
        $('.js-example-basic-multiple').select2();

        // $('#postcode').on('change',function(){
        //     var area = $(this).find(':selected').data('area');
        //     $('#area').val(area);
        // });
        $("#aj-2").val('0');
    });


    $('#ptypes').on('change',function(){
        var id = $(this).val();
        var route = "{{ route('load.attribute',['id'=>':id']) }}";

        $.ajax({
            url: route.replace(':id',id),
            type: 'GET',
            dataType: 'json',
            // response as html and load it in blade
            success: function(response){
                console.log(response);
                $('#ifield').html(response.html);
            }

        });

    });


    // image upload js 
    jQuery(document).ready(function () {
  ImgUpload();
});

function ImgUpload() {
  var imgWrap = "";
  var imgArray = [];

  $('.upload__inputfile').each(function () {
    $(this).on('change', function (e) {
      imgWrap = $(this).closest('.upload__box').find('.upload__img-wrap');
      var maxLength = $(this).attr('data-max_length');

      var files = e.target.files;
      var filesArr = Array.prototype.slice.call(files);
      var iterator = 0;
      filesArr.forEach(function (f, index) {

        if (!f.type.match('image.*')) {
          return;
        }

        if (imgArray.length > maxLength) {
          return false
        } else {
          var len = 0;
          for (var i = 0; i < imgArray.length; i++) {
            if (imgArray[i] !== undefined) {
              len++;
            }
          }
          if (len > maxLength) {
            return false;
          } else {
            imgArray.push(f);

            var reader = new FileReader();
            reader.onload = function (e) {
              var html = "<div class='upload__img-box'><div style='background-image: url(" + e.target.result + ")' data-number='" + $(".upload__img-close").length + "' data-file='" + f.name + "' class='img-bg'><div class='upload__img-close'></div></div></div>";
              imgWrap.append(html);
              iterator++;
            }
            reader.readAsDataURL(f);
          }
        }
      });
    });
  });

  $('body').on('click', ".upload__img-close", function (e) {
    var file = $(this).parent().data("file");
    for (var i = 0; i < imgArray.length; i++) {
      if (imgArray[i].name === file) {
        imgArray.splice(i, 1);
        break;
      }
    }
    $(this).parent().parent().remove();
  });
}


$('#buddy_up').on('change',function(){
    if($(this).is(':checked')){
        $('#buddy_up').val('1');
    }else{
        $('#buddy_up').val('0');
    }
});




</script>




@endpush