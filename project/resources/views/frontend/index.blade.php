@extends('layouts.front')

@push('css')
    
@endpush

@section('content')


@include('frontend.home-section.hero')

@include('frontend.home-section.room')

{{-- @include('frontend.home-section.rent-property') --}}

@include('frontend.home-section.distress')

@include('frontend.home-section.buyers')

@include('frontend.home-section.blog')

    
@endsection

@push('js')

@endpush