@extends('layouts.admin')

@section('title')
@lang('All Verification Request')
@endsection

@section('breadcrumb')
<section class="section">
    <div class="section-header">
        <h1> @lang('ALl Verification Request')</h1>
    </div>
</section>

@endsection

@section('content')

<div class="container-xl">
    <div class="row row-deck row-cards">
        <div class="col-md-12">
            <div class="card">

                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                
                                <th>@lang('User')</th>
                                <th>@lang('NID Number')</th>
                                <th>@lang('Status')</th>
                                <th>@lang('Action')</th>
                               

                            </tr>
                        </thead>
                        <tbody>
                            @forelse($users as $item)
                            <tr>
                               
                                <td>

                                    <a href="{{route('admin.user.details',$item->user_id)}}">{{$item->user->name}}</a>



                                </td>
                                <td data-label="@lang('NID Number')">
                                    {{__($item->id_card)}}
                                </td>

                                <td data-label="@lang('Status')">
                                    @if($item->status == 0)
                                    <span class="badge badge-warning">@lang('Pending')</span>
                                    @elseif($item->status == 1)
                                    <span class="badge badge-success">@lang('Approved')</span>
                                    @else
                                    <span class="badge badge-danger">@lang('Rejected')</span>
                                    @endif
                                </td>

                                <td data-label="@lang('Action')">
                                    @if($item->status == 0)
                                    <a href="{{route('admin.verification.status',['id1'=>$item->id, 'id2'=>1])}}" class="btn btn-success btn-sm" title="@lang('Approve')">
                                        <i class="fa fa-check"></i>
                                    </a>
                                    <a href="{{route('admin.verification.status',['id1'=>$item->id, 'id2'=>1])}}" class="btn btn-danger btn-sm" title="@lang('Reject')">
                                        <i class="fa fa-times"></i>
                                    </a>

                                    @else
                                    <span class="badge badge-warning">@lang('No Action')</span>
                                    @endif
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
                @if ($users->hasPages())
                <div class="card-footer">
                    {{$users->links('admin.partials.paginate')}}
                </div>
                @endif
            </div>
        </div>
    </div>
</div>



@endsection


@push('script')

@endpush