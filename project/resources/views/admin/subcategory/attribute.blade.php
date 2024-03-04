@extends('layouts.admin')

@section('title')
   @lang('Subcategories')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header">
        <h1>@lang('Subcategories')</h1>
    </div>
</section>
@endsection

@section('content')


<div class="row">
   <div class="col-lg-12">
      <div class="card mb-4">

        <form action="{{ route('admin.attribute.store') }}" method="post">
            @csrf

            <input type="hidden" name="id" value="{{ $id }}">
            <div class="card-header">
                <h4>@lang('Attributes')</h4>
            </div>
            <div class="card-body">
                
                 {{-- Aminities attribute @s  --}}
                <div class="row mt-4">
                    <div class="col-md-4 ">
                        @lang('Amenities')
                        
                    </div>
                    <div class="col-md-7 d-flex">

                            <input type="text" value="{{ isset($attributes->amenities) ? $attributes->amenities[0]: '' }}"  class="form-control" name="amenities[]" placeholder="@lang('Amenities')">
                            <button type="button" class="btn btn-primary mx-1  addMore"><i class="fa fa-plus"></i></button>
                    </div>
                </div>

                <div class="row aminities ">
                    @if(isset($attributes->amenities))
                    @foreach($attributes->amenities as $key => $amenities)
                     @if ($key > 0)
                     <div class="col-md-7 d-flex offset-md-4 mt-2">
                        <input type="text" class="form-control" name="amenities[]" value="{{ $amenities }}" placeholder="@lang('Amenities')">
                        <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                    </div>
                     @endif
                        @endforeach
                    @endif

                </div>

                {{-- Aminities attribute end  --}}

{{-- property type attribute @s  --}}
                <div class="row mt-5">
                    <div class="col-md-4 ">
                        @lang('Property Type')
                    </div>
                    <div class="col-md-7 d-flex">

                            <input type="text" class="form-control" value="{{ isset($attributes->property_type) ? $attributes->property_type[0]: '' }}"  name="property_type[]" placeholder="@lang('Property Type')">
                            <button type="button" class="btn btn-primary mx-1  addMoreproperty"><i class="fa fa-plus"></i></button>
                    </div>
                </div>

                <div class="row property ">
                    @if(isset($attributes->property_type))
                    @foreach($attributes->property_type as $key => $property_type)
                     @if ($key > 0)
                     <div class="col-md-7 d-flex offset-md-4 mt-2">
                        <input type="text" class="form-control" name="property_type[]" value="{{ $property_type }}" placeholder="@lang('Property Type')">
                        <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                    </div>
                     @endif
                        @endforeach
                    @endif

                </div>
                {{-- property type attribute end  --}}

{{-- plot usage attribute  --}}
                <div class="row mt-5">
                    <div class="col-md-4 ">
                        @lang('Plot Usage')
                    </div>
                    <div class="col-md-7 d-flex">

                            <input type="text" class="form-control"  value="{{ isset($attributes->plot_usage) ? $attributes->plot_usage[0]: '' }}"  name="plot_usage[]" placeholder="@lang('Plot Usage')">
                            <button type="button" class="btn btn-primary mx-1  addMoreplot"><i class="fa fa-plus"></i></button>
                    </div>
                </div>

                <div class="row plot">
                    @if(isset($attributes->plot_usage))
                    @foreach($attributes->plot_usage as $key => $plot_usage)
                     @if ($key > 0)
                     <div class="col-md-7 d-flex offset-md-4 mt-2">
                        <input type="text" class="form-control" name="plot_usage[]" value="{{ $plot_usage }}" placeholder="@lang('Plot Usage')">
                        <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                    </div>
                     @endif
                        @endforeach
                    @endif
                </div>
                {{-- plot usage attribute end  --}}

                {{-- strategy attribute @s  --}}
                <div class="row mt-4">
                    <div class="col-md-4 ">
                        @lang('Strategy for exclusive deals')
                        
                    </div>
                    <div class="col-md-7 d-flex">

                            <input type="text" value="{{ isset($attributes->strategy) ? $attributes->strategy[0]: '' }}"  class="form-control" name="strategy[]" placeholder="@lang('Strategy')">
                            <button type="button" class="btn btn-primary mx-1  addMorestrategy"><i class="fa fa-plus"></i></button>
                    </div>
                </div>

                <div class="row strategy ">
                    @if(isset($attributes->strategy))
                    @foreach($attributes->strategy as $key => $strategy)
                     @if ($key > 0)
                     <div class="col-md-7 d-flex offset-md-4 mt-2">
                        <input type="text" class="form-control" name="strategy[]" value="{{ $strategy }}" placeholder="@lang('Strategy')">
                        <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                    </div>
                     @endif
                        @endforeach
                    @endif

                </div>



                





                <div class="row mt-5 ">
                    <div class="col-md-4">
                        <div class="form-check">
                            <input class="form-check-input" name="is_bedrooms" type="checkbox" {{ $subcategory->is_bedrooms == 1 ? 'checked': '' }}  value="{{ $subcategory->is_bedrooms}}"  id="is_bedrooms">
                            <label class="form-check-label" for="is_bedrooms">
                                @lang('Bedrooms')
                            </label>
                        </div>
                    </div>

                    <div class="col-md-7 {{ $subcategory->is_bedrooms == 1 ? '': 'd-none' }}  ">
                        <input type="text" value="{{ $subcategory->bedroom }}" name="bedroom[]" class="form-control" id="bedroom">
                    </div>
                    
                </div>

                <div class="row mt-5 ">
                    <div class="col-md-4">
                        <div class="form-check">
                            <input class="form-check-input" name="is_bathrooms" {{ $subcategory->is_bathrooms == 1 ? 'checked': '' }} type="checkbox" value="{{ $subcategory->is_bathrooms }}"  id="is_bathrooms">
                            <label class="form-check-label" for="is_bathrooms">
                                @lang('Bathrooms')
                            </label>
                        </div>
                    </div>

                    <div class="col-md-7 {{ $subcategory->is_bathrooms == 1 ? '': 'd-none' }}">
                        <input type="text" value="{{ $subcategory->bathrooms}}" name="bathrooms[]" class="form-control" id="bathroom">
                    </div>
                    
                </div>

                <div class="row mt-5 ">
                    <div class="col-md-4">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" {{ $subcategory->is_receptions == 1 ? 'checked': '' }} name="is_receptions" value="{{ $subcategory->is_receptions }}" id="is_receptions">
                            <label class="form-check-label" for="is_receptions">
                                @lang('Reception')
                            </label>
                        </div>
                    </div>

                    <div class="col-md-7 {{ $subcategory->is_receptions == 1 ? '': 'd-none' }}">
                        <input type="text" value="{{ $subcategory->receptions}}" name="receptions[]" class="form-control" id="reception">
                    </div>
                    
                </div>

                <div class="row mt-5 ">
                    <div class="col-md-4">
                        <div class="form-check">
                            <input class="form-check-input"  {{ $subcategory->is_required == 1 ? 'checked': '' }} type="checkbox" name="is_required" value="{{ $subcategory->is_required }}" id="is_required">
                            <label class="form-check-label" for="is_required">
                                @lang('Required')
                            </label>
                        </div>
                    </div>

                    <div class="col-md-7 {{ $subcategory->is_required == 1 ? '': 'd-none' }}">
                        <input type="text" value="{{ $subcategory->required}}" name="required[]" class="form-control" id="required">
                    </div>
                    
                </div>



            </div>
            <div class="card-footer">
                <button class="btn btn-primary">@lang('Save')</button>
            </div>

            <p class="px-5"> <strong>Note:</strong> @lang('If you do not want to use this attribute just leave empty field')</p>


        </form>

        
      </div>
   </div>
</div>

<!-- Modal -->






@endsection

@push('script')
    <script>
       'use strict';

       $('.addMore').on('click', function() {
            $('.aminities').append(`
                <div class="col-md-7 d-flex offset-md-4 mt-2">
                    <input type="text" class="form-control" required name="amenities[]" placeholder="@lang('Amenities')">
                    <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                </div>
            `);
       });

       $('.aminities').on('click', '.remove', function() {
            $(this).parent().remove();
       });


       $('.addMoreproperty').on('click', function(){
            $('.property').append(`
                <div class="col-md-7 d-flex offset-md-4 mt-2">
                    <input type="text" class="form-control" required  name="property_type[]" placeholder="@lang('Property Type')">
                    <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                </div>
            `);
       });

         $('.property').on('click', '.remove', function() {
                $(this).parent().remove();
         });


         $('.addMoreplot').on('click', function(){
            $('.plot').append(`
                <div class="col-md-7 d-flex offset-md-4 mt-2">
                    <input type="text" class="form-control" required name="plot_usage[]" placeholder="@lang('Plot Usage')">
                    <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                </div>
            `);
         });

            $('.plot').on('click', '.remove', function() {
                    $(this).parent().remove();
            });


            $('.addMorestrategy').on('click', function(){
            $('.strategy').append(`
                <div class="col-md-7 d-flex offset-md-4 mt-2">
                    <input type="text" class="form-control" required name="strategy[]" placeholder="@lang('Strategy')">
                    <button type="button" class="btn btn-danger mx-1 remove"><i class="fa fa-times"></i></button>
                </div>
            `);
            });

            $('.strategy').on('click', '.remove', function() {
                    $(this).parent().remove();
            });

            


            $(document).ready(function(){
                $('#bedroom').tagify();
                $('#is_bedrooms').click(function(){
                    if($(this).is(':checked')){
                        $(this).val(1);
                        $('#bedroom').parent().removeClass('d-none');
                        $('#bedroom').attr('required', true);
                    }else{
                        $('#bedroom').parent().addClass('d-none');
                        $('#bedroom').attr('required', false);
                    }
                });
            });

            $(document).ready(function(){
                $('#bathroom').tagify();
                $('#is_bathrooms').click(function(){
                    if($(this).is(':checked')){
                        $(this).val(1);
                        $('#bathroom').parent().removeClass('d-none');
                        $('#bathroom').attr('required', true);
                    }else{
                        $('#bathroom').parent().addClass('d-none');
                        $('#bathroom').attr('required', false);
                    }
                });
            });

            $(document).ready(function(){
                $('#reception').tagify();
                $('#is_receptions').click(function(){
                    $(this).val(1);
                    if($(this).is(':checked')){
                        $('#reception').parent().removeClass('d-none');
                        $('#reception').attr('required', true);
                    }else{
                        $('#reception').parent().addClass('d-none');
                        $('#reception').attr('required', false);
                    }
                });
            });

            $(document).ready(function(){
                $('#required').tagify();
                $('#is_required').click(function(){
                    $(this).val(1);
                    if($(this).is(':checked')){
                        $('#required').parent().removeClass('d-none');
                        $('#required').attr('required', true);
                    }else{
                        $('#required').parent().addClass('d-none');
                         $('#required').attr('required', false);
                        
                    }
                });
            });
      
      
    </script>
@endpush

