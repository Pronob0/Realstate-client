@extends('layouts.front')

@push('css')

@endpush

@section('content')



<section>

    @if ($item->category_id==11)

    {{-- buy or rent  --}}
    @if ($item->type=='buy')
        
        @include('includes.property-wanted-details')

    @elseif($item->type=='rent')
    
            @include('includes.room-rent-wanted-details')

    @endif
        
    @endif

    @if ($item->category_id==12)
        @include('includes.exclusive-deals-details')

    @endif

    @if ($item->category_id==13)
        @include('includes.room-rent-details')

    @endif


</section>

@endsection

@push('js')

<script>
    $('.click').click(function(){
        var src = $(this).attr('src');
        $('.main').attr('src',src);
     
    })
</script>

@endpush