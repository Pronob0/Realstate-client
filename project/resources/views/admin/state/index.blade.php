@extends('layouts.admin')

@section('title')
   @lang('Manage State')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header">
        <h1>@lang('Manage State')</h1>
    </div>
</section>
@endsection

@section('content')


<div class="row">
   <div class="col-lg-12">
      <div class="card mb-4">
         <div class="card-header d-flex justify-content-end">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add">
               <i class="fas fa-plus"></i> @lang('Add New')
             </button>

         </div>
         <div class="table-responsive p-3">
            <table id="londontable" class="table table-striped">
               <thead>
               <tr>
                   <th>@lang('Area')</th>
                   <th>@lang('Postcode')</th>

                   <th>@lang('Action')</th>
               </tr>
               </thead>
              
           </table>
         </div>
      </div>
   </div>
</div>

<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <form action="{{route('admin.state.store')}}" method="POST">
         @csrf
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">@lang('Add new State')</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
            </div>
            <input type="hidden" name="category_id" value="{{ $id }}">
            <div class="modal-body">
               <div class="form-group">
                  <label>@lang('Post Code')</label>
                  <input class="form-control" type="text" name="postcode">
               </div>
               <div class="form-group">
                <label>@lang('Area')</label>
                <input class="form-control" type="text" name="area">
             </div>
             <div class="form-group">
               <label>@lang('Region')</label>
               <input class="form-control" type="text" name="region">
            </div>
            <div class="form-group">
               <label>@lang('Country')</label>
               <input class="form-control" type="text" name="country">
            </div>

            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-dark" data-dismiss="modal">@lang('Close')</button>
               <button type="submit" class="btn btn-primary">@lang('Submit')</button>
            </div>
         </div>
      </form>
   </div>
</div>

<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-hidden="true">
   <div class="modal-dialog" role="document">
      <form action="" method="POST">
         @csrf
         @method('PUT')
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">@lang('Edit State')</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                  </button>
            </div>
            <input type="hidden" name="country_id" value="{{ $id }}">
            <div class="modal-body">
               <div class="form-group">
                  <label>@lang('Post Code')</label>
                  <input class="form-control" type="text" name="postcode">
               </div>
               <div class="form-group">
                <label>@lang('Area')</label>
                <input class="form-control" type="text" name="area">
             </div>
             <div class="form-group">
               <label>@lang('Region')</label>
               <input class="form-control" type="text" name="region">
            </div>
            <div class="form-group">
               <label>@lang('Country')</label>
               <input class="form-control" type="text" name="country">
            </div>

            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-dark" data-dismiss="modal">@lang('Close')</button>
               <button type="submit" class="btn btn-primary">@lang('Submit')</button>
            </div>
         </div>
      </form>
   </div>
</div>


<!-- Modal -->
<div class="modal fade" id="removeMod" tabindex="-1" role="dialog">
   <div class="modal-dialog" role="document">
      <form action="{{route('admin.state.destroy')}}" method="POST">
         @method('DELETE')
         @csrf
         <input type="hidden" name="id">
         <div class="modal-content">
            <div class="modal-body">
               <h5>@lang('Are you sure to remove?')</h5>
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
       $(document).on('click','#editbutton',function () { 
         var postcode = $(this).attr('data-postcode');
            var area = $(this).attr('data-area');
            var region = $(this).attr('data-region');
            var country = $(this).attr('data-country');
            
            $('#edit').find('input[name=postcode]').val(postcode)
            $('#edit').find('input[name=area]').val(area)
            $('#edit').find('input[name=region]').val(region)
            $('#edit').find('input[name=country]').val(country)
           
          $('#edit').find('form').attr('action',$(this).data('route'))
          $('#edit').modal('show')
       });

       $(document).on('click','.remove',function () { 
        
         $('#removeMod').find('input[name=id]').val($(this).data('id'))
         $('#removeMod').modal('show')
       });

      
    </script>

<script type="text/javascript">
	"use strict";

		var table = $('#londontable').DataTable({
			   ordering: false,
               processing: true,
               serverSide: true,
               searching: true,
               ajax: '{{ route('admin.state.datatables',$id) }}',
               columns: [
                        { data: 'area', name: 'area' , searchable: true},
                        
                        { data: 'postcode', name: 'postcode', searchable: true },
                       
            			{ data: 'action', searchable: false, orderable: false }

                     ],
               // language: {
               //  	processing: '<img src="{{asset('assets/images/'.$gs->admin_loader)}}">'
               //  }
            });


    </script>
@endpush

