<!-- ============================================================== -->
            <!-- Top header  -->
            <!-- ============================================================== -->
            <!-- Start Navigation -->
			
			<div class="header  change-logo">
				<div class="container">
					<nav id="navigation" class="navigation navigation-landscape">
						<div class="nav-header">
							<a class="nav-brand static-logo" href="#"><img src="{{ getPhoto($gs->header_logo) }}" class="logo" alt="logo" /></a>
							<a class="nav-brand fixed-logo" href="#"><img src="{{ getPhoto($gs->header_logo) }}" class="logo" alt="logo" /></a>
							<div class="nav-toggle"></div>
						</div>
						<div class="nav-menus-wrapper" style="transition-property: none;">
							<ul class="nav-menu">
							
								<li class="active"><a href="{{ route('home') }}">@lang('Home')<span></span></a></li>
								<li><a href="{{ route('browse.advert.category') }}">@lang('Browse')<span></span></a></li>
								<li><a href="{{ route('browse.all.services') }}">@lang('All Jobs')<span></span></a></li>
								<li><a href="{{ route('plan') }}">@lang('Pricing')<span></span></a></li>
								<li><a href="{{ route('contact') }}">@lang('Contact')<span></span></a></li>
							</ul>
							
							<ul class="nav-menu nav-menu-social align-to-right">
								
								@if (Auth::check())
								<li class="">
									<a href="{{ route('user.dashboard') }}"><i class="fas fa-user-circle mr-1"></i>@lang('Dashboard')</a>
								</li>

								@else
								<li>
									<a href="#" data-toggle="modal" data-target="#login">
										<i class="fas fa-user-circle mr-1"></i>@lang('Signin')</a>
								</li>
								@endif
								
								<li class="add-listing theme-bg">
									<a href="{{ route('choose.advert.category') }}">@lang('Post Ad')</a>
								</li>

								<li class="add-listing theme-bg">
									<a href="{{ route('service') }}">@lang('Post job')</a>
								</li>
								
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<!-- End Navigation -->
			<div class="clearfix"></div>
			<!-- ============================================================== -->
			<!-- Top header  -->
			<!-- ============================================================== -->