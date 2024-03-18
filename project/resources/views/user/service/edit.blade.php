@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ Page Title Start================================== -->
<div class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <h2 class="ipt-title">@lang('Post job')</h2>
                <span class="ipn-subtitle">@lang('Post your Required Job')</span>

            </div>
        </div>
    </div>
</div>

<section>
    <div class="container">
        <div class="row">

            @if (Auth::check())
            <div class="col-lg-12 col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="submit-page">

                            <form action="{{ route('user.service.edit',$service->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <!-- Basic Information -->
                                <div class="form-submit">

                                    <h3>@lang('Job Information')</h3>
                                    <div class="submit-section">
                                        <div class="form-row">
                                            <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
                                            <div class="form-group col-md-6">
                                                <label>Job Title<a href="#" class="" data-tip="Job Title"></a></label>
                                                <input type="text" class="form-control" name="title"
                                                    placeholder="Enter Title" value="{{ $service->title }}">
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label>@lang('Select Category')</label>
                                                <select id="ptypes" class="form-control" name="category_id" required>
                                                    <option value="">Select Category</option>
                                                    @foreach ($servicescategory as $category)
                                                    <option {{ $service->category_id== $category->id ? 'selected' : ''}}  value="{{ $category->id }}">{{ $category->name }}</option>
                                                    @endforeach

                                                </select>
                                            </div>

                                            {{-- select photo --}}


                                            <div class="form-group col-md-6">
                                                <label for="title">{{ __('Budget') }}</label>
                                                <input type="number" class="form-control" name="budget" id="title"
                                                    required placeholder="{{ __('Budget') }}" value="{{$service->budget}}">
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label for="title">{{ __('Location') }}</label>
                                                <input type="text" class="form-control" name="location" id="title"
                                                    required placeholder="{{ __('Location') }}"
                                                    value="{{ $service->location}}">
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label>@lang('Region')</label>
                                                <select id="region" class="form-control" name="region">

                                                    <option {{ $service->region=='Wales' ? 'selected': '' }} value="Wales">@lang('Wales')</option>
                                                    <option  {{ $service->region=='East Midlands' ? 'selected': '' }}  value="East Midlands">@lang('East Midlands')</option>
                                                    <option {{ $service->region=='East of England' ? 'selected': '' }} value="East of England">@lang('East of England')</option>
                                                    <option {{ $service->region=='London' ? 'selected': '' }} value="London">@lang('London')</option>
                                                    <option {{ $service->region=='North East & Cumbria' ? 'selected': '' }} value="North East & Cumbria">@lang('North East & Cumbria')
                                                    </option>
                                                    <option {{ $service->region=='North West' ? 'selected': '' }} value="North West">@lang('North West')</option>
                                                    <option {{ $service->region=='Northern Ireland' ? 'selected': '' }} value="Northern Ireland">@lang('Northern Ireland')</option>
                                                    <option {{ $service->region=='Scotland' ? 'selected': '' }}  value="Scotland">@lang('Scotland')</option>
                                                    <option {{ $service->region=='South East' ? 'selected': '' }}  value="South East">@lang('South East')</option>
                                                    <option {{ $service->region=='South West' ? 'selected': '' }} value="South West">@lang('South West')</option>
                                                    <option {{ $service->region=='West Midlands' ? 'selected': '' }} value="West Midlands">@lang('West Midlands')</option>
                                                    <option {{ $service->region=='Yorkshire & Humberside' ? 'selected': '' }} value="Yorkshire & Humberside">@lang('Yorkshire &
                                                        Humberside')</option>

                                                </select>
                                            </div>


                                            <div class="form-group col-md-12">
                                                <label><b>@lang('Postcode')</b></label>
                                                <input type="text" class="form-control" placeholder="Postcode"
                                                    name="postcode" value="{{ $service->postcode }}">
                                            </div>

                                        </div>
                                    </div>
                                    <!-- Location -->
                                    {{-- attributes --}}
                                    <div class="form-group col-md-12">
                                        <label><b>@lang('job Photo')</b></label>
                                        <input type="file" class="form-control" placeholder="Job photo" name="photo">
                                    </div>


                                    <div class="form-group col-lg-12 col-md-12">
                                        <textarea class="form-control" id="textarea" name="description"
                                            rows="5">{{ $service->description }}</textarea>
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
                    <p>Please, Sign In before you submit a Job. If you don't have an account you can create one </p>
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


    $('#ptypes').on('change', function() {
        var id = $(this).val();
        var route = "{{ route('load.attribute',['id'=>':id']) }}";

        $.ajax({
            url: route.replace(':id', id)
            , type: 'GET'
            , dataType: 'json',
            // response as html and load it in blade
            success: function(response) {
                console.log(response);
                $('#ifield').html(response.html);
            }

        });

    });


    // image upload js 
    jQuery(document).ready(function() {
        ImgUpload();
    });

    function ImgUpload() {
        var imgWrap = "";
        var imgArray = [];

        $('.upload__inputfile').each(function() {
            $(this).on('change', function(e) {
                imgWrap = $(this).closest('.upload__box').find('.upload__img-wrap');
                var maxLength = $(this).attr('data-max_length');

                var files = e.target.files;
                var filesArr = Array.prototype.slice.call(files);
                var iterator = 0;
                filesArr.forEach(function(f, index) {

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
                            reader.onload = function(e) {
                                var html = "<div class='upload__img-box'><div style='background-image: url("+ e.target.result + ")' data-number='" + $(".upload__img-close").length + "' data-file='" + f.name + "' class='img-bg'><div class='upload__img-close'></div></div></div>";
                                imgWrap.append(html);
                                iterator++;
                            }
                            reader.readAsDataURL(f);
                        }
                    }
                });
            });
        });

        $('body').on('click', ".upload__img-close", function(e) {
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


    $('#buddy_up').on('change', function() {
        if ($(this).is(':checked')) {
            $('#buddy_up').val('1');
        } else {
            $('#buddy_up').val('0');
        }
    });

</script>




@endpush