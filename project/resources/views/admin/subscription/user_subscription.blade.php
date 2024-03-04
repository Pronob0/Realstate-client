@extends('layouts.admin')

@section('title')
    @lang('Manage Plan')
@endsection

@section('breadcrumb')
    <section class="section">
        <div class="section-header">
            <h1>@lang('Manage Plan')</h1>
        </div>
    </section>
@endsection
@section('content')
    <!-- Row -->
    <div class="row">
        <div class="col-lg-12">
            <div class="card mb-4">
                
                <div class="table-responsive p-3">
                    <table class="table align-items-center table-striped">

                        <tr>
                            <th>{{ __('Transaction ID') }}</th>
                            <th>{{ __('User Name') }}</th>
                            <th>{{ __('Package Name') }}</th>
                            <th>{{ __('Price') }}</th>
                            <th>{{ __('gateway') }}</th>
                           
                        </tr>

                        @forelse ($user_subscription as $item)
                            <tr>
                                <td data-label="{{ __('User Name') }}">
                                    {{ $item->txnid }}
                                </td>
                                <td data-label="{{ __('User Name') }}">
                                    {{ $item->user->name }}
                                </td>
                                <td data-label="{{ __('Package Name') }}">
                                    {{ $item->plan->title }}
                                </td>
                                <td data-label="{{ __('Price') }}">
                                    {{ $item->price }} {{ $item->currency->sign  }}
                                </td>
                                <td data-label="{{ __('Gateway') }}">
                                    {{ $item->method}}
                                </td>

                            </tr>
                        @empty

                            <tr>
                                <td class="text-center" colspan="100%">@lang('No Data Found')</td>
                            </tr>
                        @endforelse

                    </table>
                </div>
            </div>
        </div>
        <!-- DataTable with Hover -->

    </div>
    <!--Row-->



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
