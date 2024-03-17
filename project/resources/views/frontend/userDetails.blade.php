<!-- ============================ Property Detail Start ================================== -->
@extends('layouts.front')

@push('css')

@endpush

@section('content')
<section class="gray">
    <div class="container">
        <div class="row">

            <div class="col-lg-4 col-md-12 col-sm-12 ">
                <div class="page-sidebar" style="">

                    <!-- slide-property-sec -->

                
                    <div class="agent-widget ">
                        <div class="agent-title">
                            <div class="agent-photo"><img src="{{ getPhoto($user->photo) }}" alt=""></div>
                            <div class="agent-details">
                                <h4><a href="{{ route('user.details',$user->id) }}">{{ $user->name }}</a></h4>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <div class="details text-center">
                            {{-- country --}}
                            <span class="d-block my-2"><i class="lni-map-marker me-2"></i> {{ $user->country }}</span>
                            {{-- city --}}
                            <span class="d-block my-2"><i class="lni-map-marker me-2"></i> {{ $user->city }}</span>
                            {{-- address --}}
                            <span class="d-block my-2"><i class="lni-map-marker me-2"></i> {{ $user->address }}</span>
                            {{-- email verified or not --}}

                            <span class="d-block my-2"><i class="lni-envelope me-2"></i> @lang('Email Verified: ')
                                @if($user->email_verified == 'Yes')
                                <span class="badge badge-success">@lang('Verified')</span>
                                @else
                                <span class="badge badge-danger">@lang('Not Verified')</span>
                                @endif
                            </span>
                            {{-- KYC verified --}}

                            <span class="d-block my-2"><i class="lni-envelope me-2"></i> @lang('KYC Verified: ')
                                @if($user->kyc_status == 1)
                                <span class="badge badge-success">@lang('Verified')</span>
                                @else
                                <span class="badge badge-danger">@lang('Not Verified')</span>
                                @endif
                            </span>
                        </div>
                    </div>


                </div>
            </div>

            <!-- property main detail -->
            <div class="col-lg-8 col-md-12 col-sm-12">

                <!-- Single Block Wrap -->
                <div class="block-wrap">

                    <div class="block-header">
                        <h4 class="block-title">@lang('All Advertisements')</h4>
                    </div>

                    <div class="block-body">

                        <table class="table table-light table-striped">
                            <tbody>

                                {{-- just show title with link --}}
                                @foreach ($advert as $item)
                                <tr>
                                    <td><a href="{{ route('advertise.details',$item->id) }}">{{ $item->title }}</a></td>
                                </tr>

                                @endforeach

                            </tbody>
                        </table>
                    </div>

                </div>

                @if($services->count() > 0)

                <div class="block-wrap">

                    <div class="block-header">
                        <h4 class="block-title">@lang('All Services')</h4>
                    </div>

                    <div class="block-body">

                        <table class="table table-light table-striped">
                            <tbody>
                                {{-- just show title with link --}}
                                @foreach ($services as $item)
                                <tr>
                                    <td><a href="{{ route('service.details',$item->id) }}">{{ $item->title }}</a></td>
                                </tr>

                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                @endif
            </div>
        </div>
    </div>
</section>
<!-- ============================ Property Detail End ================================== -->

@endsection

@push('js')

@endpush