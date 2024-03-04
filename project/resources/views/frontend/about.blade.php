@extends('layouts.front')

@push('css')

@endpush

@section('content')

<!-- ============================ About Banner  Start================================== -->

<section>
    <div class="container">
    
        <div class="row">
            <div class="col text-center">
                <div class="sec-heading center">
                    <h2>{{ $about->header_title }}</h2>
                    <p>{{ $about->title }}</p>
                </div>
            </div>
        </div>

        {{-- about section description with image  --}}
        <div class="description">
            <div class="justify-content-center">
                <p>{!! $about->description !!}</p>
            </div>
        </div>

        {{-- about section description with image  --}}



    </div>
</section>

<!-- ============================ About Banner End ================================== -->



@endsection

@push('js')

@endpush