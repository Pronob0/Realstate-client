@extends('layouts.front')

@push('css')
    
@endpush

@section('content')


 <!-- ======================= Contact Page Detail ======================== -->
 <section class="gray">
    <div class="container">

        <div class="row justify-content-center mb-5">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                <div class="sec_title position-relative text-center">
                    <h2 class="off_title">{{ $contact->title }}</h2>
                </div>
            </div>
        </div>

        <div class="row align-items-start justify-content-center">

            <div class="col-xl-10 col-lg-11 col-md-12 col-sm-12">
                <form class="row submit-form py-4 px-3 rounded bg-white mb-4" action="{{route('front.contact.submit')}}" method="POST">
                    @csrf
                    @includeIf('includes.user.form-both')

                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label class="small text-dark ft-medium">@lang('Your Name') *</label>
                            <input type="text" name="name" class="form-control" placeholder="@lang('Your Name')">
                        </div>
                    </div>

                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label class="small text-dark ft-medium">@lang('Your Email') *</label>
                            <input type="email" name="email" class="form-control" placeholder="@lang('Enter your email')">
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label class="small text-dark ft-medium">@lang('Your Phone')</label>
                            <input type="text" name="phone" class="form-control" placeholder="+00 256 548 7542">
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label class="small text-dark ft-medium">@lang('Your Subject')</label>
                            <input type="text" name="subject" class="form-control" placeholder="@lang('Type Your Subject')">
                        </div>
                    </div>

                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label class="small text-dark ft-medium">@lang('Your Message')</label>
                            <textarea name="message" class="form-control ht-80" placeholder="@lang('Your Message...')"></textarea>
                        </div>
                    </div>

                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="form-group">
                            <button type="submit" class="btn theme-bg text-light btn-contact">
                                @lang('Send Message')
                                <div class="spinner-border formSpin" role="status"></div>
                            </button>
                        </div>
                    </div>

                </form>
            </div>

            <div class="col-xl-10 col-lg-11 col-md-12 col-sm-12">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="bg-white rounded p-3 mb-2">
                            <h4 class="ft-medium mb-3 theme-cl">@lang('Address info'):</h4>
                            <p>
                                @php
                                    echo $contact->address;
                                @endphp
                            </p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="bg-white rounded p-3 mb-2">
                            <h4 class="ft-medium mb-3 theme-cl">@lang('Call Us'):</h4>
                            <p class="mb-2">{{ $contact->phone1 }}</p>
                            <p class="mb-2">{{ $contact->phone2 }}</p>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-12">
                        <div class="bg-white rounded p-3 mb-2">
                            <h4 class="ft-medium mb-3 theme-cl">@lang('Drop A Mail'):</h4>
                            
                            <p class="lh-1 text-dark">{{ $contact->email1 }}</p>
                            <p class="lh-1 text-dark">{{ $contact->email2 }}</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ======================= Contact Page End ======================== -->




@endsection

@push('js')

@endpush