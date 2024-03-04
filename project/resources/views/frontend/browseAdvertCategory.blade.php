@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ Hero Banner  Start================================== -->

<!-- ============================ Hero Banner End ================================== -->

@if ($category->id==11)

@if ($type=='buy')
@include('includes.property-wanted')

@elseif($type=='rent')
@include('includes.room-wanted')
@endif

    
@endif

@if ($category->id==12)
@include('includes.exclusive-deals')
@endif

@if ($category->id==13)
@include('includes.room-rent')
@endif

@endsection

@push('js')

@endpush