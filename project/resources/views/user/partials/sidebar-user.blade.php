<div class="col-lg-3 col-md-4">
    <div class="dashboard-navbar">
        
        <div class="d-user-avater">
            <img src="{{ getPhoto(auth()->user()->photo) }}" class="img-fluid avater" alt="">
            <h4>{{ auth()->user()->name }}</h4>
            <span>{{ auth()->user()->address }}</span>
        </div>
        
        <div class="d-navigation">
            <ul>
                <li class="active"><a href="{{route('user.dashboard')}}"><i class="ti-user"></i>Dashboard</a></li>
                <li class="active"><a href="{{route('user.verification')}}"><i class="ti-user"></i>Verification</a></li>
                <li><a href="{{ route('user.my.properties') }}"><i class="ti-layers"></i>@lang('My Properties')</a></li>
                @if ($ticket = DB::table('user_contacts')->orderBy('id','desc')->where('user_id',auth()->user()->id)->orWhere('owner_id',auth()->user()->id)->first())
                    <li class="{{ request()->routeIs('user.message') ? 'active' : ''}}"><a href="{{ route('user.message',['ticket' => $ticket->id]) }}"><i class="lni lni-envelope me-2"></i>@lang('Messages')</a></li>
                @else
                    <li class="{{ request()->routeIs('user.message') ? 'active' : ''}}"><a href="{{ route('user.message') }}"><i class="lni lni-envelope me-2"></i>@lang('Messages')</a></li>
                @endif
                <li><a href="{{ route('choose.advert.category') }}"><i class="ti-pencil-alt"></i>Submit New Property</a></li>
                <li><a href="change-password.html"><i class="ti-unlock"></i>Change Password</a></li>
                <li><a href="{{ route('user.logout') }}"><i class="ti-power-off"></i>Log Out</a></li>
            </ul>
        </div>
        
    </div>
</div>