@extends('layouts.admin')

@section('title')
@lang('Advertisements')
@endsection

@section('breadcrumb')
<section class="section">
  <div class="section-header">
    <h1> @lang('Advertisements')</h1>
  </div>
</section>

@endsection

@section('content')
<div class="container-xl">
  <div class="row row-deck row-cards">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header d-flex justify-content-end">
          <form action="" class="d-flex flex-wrap justify-content-end">
            <div class="form-group m-1 flex-grow-1">
              <select name="" class="form-control" onChange="window.location.href=this.value">
                <option value="{{filter('remark','')}}">@lang('All Advertisements')</option>

                <option value="{{filter('remark','room_rent')}}" {{request('remark')=='room_rent' ? 'selected'
                  :''}}>@lang('Room rent')</option>

                <option value="{{filter('remark','exclusive_deals')}}" {{request('remark')=='exclusive_deals' ? 'selected'
                  :''}}>@lang('Exclusive Deals')</option>

                <option value="{{filter('remark','property_wanted')}}" {{request('remark')=='property_wanted' ? 'selected'
                  :''}}>@lang('Property Wanted')</option>
              </select>
            </div>

          
          </form>
        </div>

        <div class="table-responsive">
          <table class="table table-striped">
            <thead>
              <tr>
                <th>@lang('Title')</th>
                <th>@lang('Category')</th>
                <th>@lang('Subcategory')</th>
                <th>@lang('property Type')</th>
                <th>@lang('Actions')</th>
               
                
              </tr>
            </thead>
            <tbody>
              @forelse($advertisements as $item)
              <tr>
                <td data-label="@lang('Title')">{{$item->title}}</td>
                <td data-label="@lang('Category')">{{__($item->category->name)}}</td>
                <td data-label="@lang('Subcategory')">
                  {{__($item->subcategory->name)}}
                </td>
                <td data-label="@lang('Property type')">
                  {{__($item->property_type)}}
                </td>

                <td data-label="@lang('Actions')">
                  <a target="__blank" href="{{ route('advertise.details',$item->id) }}" class="btn btn-sm btn-primary"><i
                      class="fa fa-eye"></i></a>
                      <a href="javascript:void(0)" class="btn btn-danger  btn-sm remove mb-1"
                      data-route="{{ route('admin.property.destroy', $item) }}" data-toggle="tooltip"
                      title="@lang('Delete')"><i class="fas fa-trash"></i></a>
                </td>

              </tr>
              @empty
              <tr>
                <td class="text-center" colspan="12">@lang('No data found!')</td>
              </tr>
              @endforelse
            </tbody>
          </table>
        </div>
        @if ($advertisements->hasPages())
        <div class="card-footer">
          {{$advertisements->links('admin.partials.paginate')}}
        </div>
        @endif
      </div>
    </div>
  </div>
</div>

    <!-- Modal -->
    <div class="modal fade" id="del" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <form action="" method="post">
              @csrf
              @method('DELETE')
              <div class="modal-content">
                  <div class="modal-body">
                      <h5 class="mt-3">@lang('Are you sure to remove?')</h5>
                  </div>
                  <div class="modal-footer">
                      <button type="button" class="btn btn-dark" data-dismiss="modal">@lang('Close')</button>
                      <button type="submit" class="btn btn-danger">@lang('Confirm')</button>
                  </div>
              </div>
          </form>
      </div>
  </div>
@endsection

@push('script')

<script>
 'use strict';
        $('.remove').on('click', function() {
            var route = $(this).data('route')
            $('#del').find('form').attr('action', route)
            $('#del').modal('show')
        })
    
    
</script>

@endpush