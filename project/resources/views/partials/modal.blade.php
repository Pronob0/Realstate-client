<!-- Log In Modal -->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="registermodal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered login-pop-form" role="document">
        <div class="modal-content" id="registermodal">
            <span class="mod-close" data-dismiss="modal" aria-hidden="true"><i class="ti-close"></i></span>
            <div class="modal-body">
                <h4 class="modal-header-title">Log In</h4>
                <div class="login-form">
                    @if(session()->has('error'))
                    <div class="my-2 text-center creds  p-2">
                    <span class="text-danger  mt-2">{{ session('error') }}</span>
                    </div>
                @endif
                  
                        <form class="row gy-4" id="loginform"  action="{{ route('user.login.submit') }}" method="POST">
                           @include('includes.form-both')
                            @csrf
                        <div class="form-group col-md-12">
                            <label>@lang('User Email')</label>
                            <div class="input-with-icon">
                                <input type="email" name="email" placeholder="Your Email" required class="form-control" value="{{ old('email') }}">
                                <i class="ti-user"></i>
                            </div>
                        </div>
                        
                        <div class="form-group col-md-12">
                            <label>@lang('Password')</label>
                            <div class="input-with-icon">
                                <input type="password" name="password" placeholder="Your Password" required  class="form-control">
                                <i class="ti-unlock"></i>
                            </div>
                        </div>

                        
                        <div class="form-group col-md-12">
                            <input id="authdata" type="hidden"  value="{{ __('Authenticating...') }}">
                            <button type="submit" class="btn btn-md pop-login submit-btn">@lang('Login')<div class="spinner-border formSpin" role="status"></div></button>
                        </div>
                        <div class="form-check ml-4">
                            <input type="checkbox" name="remember" id="remember" class="form-check-input"
                                checked>
                            <label for="remember" class="form-check-label">@lang('Remember Me')</label>
                        </div>
                    
                    </form>
                </div>
                
                <div class="text-center">
                    <p class="mt-5"><i class="ti-user mr-1"></i>Don't Have An Account? <a href="JavaScript:Void(0);" data-toggle="modal" data-target="#signup" id="signupmodal">Go For Sign Up</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Modal -->

<!-- Sign Up Modal -->
<div class="modal fade signup" id="signup" tabindex="-1" role="dialog" aria-labelledby="sign-up" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered login-pop-form" role="document">
        <div class="modal-content" id="sign-up">
            <span class="mod-close" data-dismiss="modal" aria-hidden="true"><i class="ti-close"></i></span>
            <div class="modal-body">
                <h4 class="modal-header-title">Sign Up</h4>
                <div class="login-form">
                    <form id="registerform" class="row gy-3" action="{{ route('user.register.submit') }}" method="POST">
                        @includeIf('includes.form-both')
                         @csrf
                        <div class="row">
                            
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <div class="input-with-icon">
                                        <input type="text" name="name" id="name" placeholder="Full Name" class="form-control" required>
                                        <i class="ti-user"></i>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <div class="input-with-icon">
                                        <input type="email" name="email"  required placeholder="Your Email" class="form-control">
                                        <i class="ti-email"></i>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <div class="input-with-icon">
                                        <input type="text" name="username" id="username" placeholder="Username" class="form-control" required>
                                        <i class="ti-user"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <div class="input-with-icon">
                                        <input type="text" name="phone" id="phone" placeholder="Phone" class="form-control">
                                        <i class="ti-phone"></i>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <div class="input-with-icon">
                                        <input type="password" name="password"  placeholder="Password" class="form-control">
                                        <i class="ti-unlock"></i>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <div class="input-with-icon">
                                        <input type="password" name="password_confirmation" placeholder="Confirm Password" id="confirm-password"
                                        class="form-control">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-12 mt-2 ml-4">
                                @if($gs->recaptcha == 1)
                                            <div class="form-input mb-3">
                                                 {!! NoCaptcha::display() !!}
                                                 {!! NoCaptcha::renderJs() !!}
                                                 @error('g-recaptcha-response')
                                                 <p class="my-2">{{$message}}</p>
                                                 @enderror
                                             </div>
                                @endif
                            </div>
                            
                        </div>
                        
                        <div class="form-group" style="width: 100%">
                            <input id="processdata" type="hidden"  value="{{ __('Processing...') }}">
                            <button type="submit"  class="btn btn-md full-width pop-login submit-btn"> <div class="spinner-border formSpin" role="status"></div>Sign Up</button>
                        </div>
                    
                    </form>
                </div>
                {{-- <div class="modal-divider"><span>Or login via</span></div>
                <div class="social-login mb-3">
                    <ul>
                        <li><a href="#" class="btn connect-fb"><i class="ti-facebook"></i>Facebook</a></li>
                        <li><a href="#" class="btn connect-twitter"><i class="ti-twitter"></i>Twitter</a></li>
                    </ul>
                </div> --}}
                <div class="text-center">
                    <p class="mt-5"><i class="ti-user mr-1"></i>Already Have An Account? <a data-toggle="modal" data-target="#login" href="#" class="link">Go For LogIn</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Modal -->