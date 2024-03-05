<?php

use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\BlogAttributeController;
use App\Http\Controllers\Admin\BlogCategoryController;
use App\Http\Controllers\Admin\BlogController;
use App\Http\Controllers\Admin\BlogSubCategoryController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\CountryController;
use App\Http\Controllers\Admin\CurrencyController;
use App\Http\Controllers\Admin\EmailController;
use App\Http\Controllers\Admin\FaqController;
use App\Http\Controllers\Admin\GeneralSettingController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\ManageRoleController;
use App\Http\Controllers\Admin\ManageStaffController;
use App\Http\Controllers\Admin\ManageTestimonialController;
use App\Http\Controllers\Admin\PageController;
use App\Http\Controllers\Admin\PaymentGatewayController;
use App\Http\Controllers\Admin\ProductCategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\PropertyController;
use App\Http\Controllers\Admin\SeoController;
use App\Http\Controllers\Admin\ServiceCategoryController;
use App\Http\Controllers\Admin\ServiceController;
use App\Http\Controllers\Admin\SocialController;
use App\Http\Controllers\Admin\StateController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Admin\SubscriptionController;
use App\Http\Controllers\Admin\TeamController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\PostAdController;
use App\Http\Controllers\User\MyPropertyController;
use App\Http\Controllers\User\RegisterController;
use App\Http\Controllers\User\StripeController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\User\UserLoginController;
use App\Models\Country;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

// ************************** ADMIN SECTION START ***************************//

Route::prefix('admin')->name('admin.')->group(function () {

    Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
    Route::post('/login', [LoginController::class, 'login']);
    Route::get('/forgot-password', [LoginController::class, 'forgotPasswordForm'])->name('forgot.password');
    Route::post('/forgot-password', [LoginController::class, 'forgotPasswordSubmit']);
    Route::get('forgot-password/verify-code', [LoginController::class, 'verifyCode'])->name('verify.code');
    Route::post('forgot-password/verify-code', [LoginController::class, 'verifyCodeSubmit']);


    Route::middleware('auth:admin')->group(function () {
  
    // Admin Dashboard Controller @s
        Route::get('/logout', [LoginController::class, 'logout'])->name('logout');
        
        Route::get('reset-password', [LoginController::class, 'resetPassword'])->name('reset.password');
        Route::post('reset-password', [LoginController::class, 'resetPasswordSubmit']);
        

        Route::get('/', [AdminController::class, 'index'])->name('dashboard');
        
        Route::get('/password', [AdminController::class, 'passwordreset'])->name('password');
        Route::post('/password/update', [AdminController::class, 'changepass'])->name('password.update');

        Route::get('/profile', [AdminController::class, 'profile'])->name('profile');
        Route::post('/profile/update', [AdminController::class, 'profileupdate'])->name('profile.update');

        // cookie  section
        Route::get('/manage-cookie', [AdminController::class, 'cookie'])->name('cookie');
        Route::post('/manage-cookie', [AdminController::class, 'updateCookie'])->name('update.cookie');

        // Language section 

        Route::get('/manage-language', [AdminController::class, 'language'])->name('language');
        Route::post('/language/update', [AdminController::class, 'languageUpdate'])->name('language.update');

        Route::put('page/update/{page}', [PageController::class, 'update'])->name('page.update');
        Route::post('page/remove', [PageController::class, 'destroy'])->name('page.remove');
        Route::post('page/store', [PageController::class, 'store'])->name('page.store');

        // Blog Category Controller 
        Route::get('blog-category', [BlogCategoryController::class, 'index'])->name('bcategory.index');
        Route::post('blog-category/store', [BlogCategoryController::class, 'store'])->name('bcategory.store');
        Route::put('blog-category/update/{id}', [BlogCategoryController::class, 'update'])->name('bcategory.update');
        Route::delete('blog-category/destroy', [BlogCategoryController::class, 'destroy'])->name('bcategory.destroy');

        // Blog category Controller ends 

        // Service Category Controller 
        Route::get('service-category', [ServiceCategoryController::class, 'index'])->name('scategory.index');
        Route::post('service-category/store', [ServiceCategoryController::class, 'store'])->name('scategory.store');
        Route::put('service-category/update/{id}', [ServiceCategoryController::class, 'update'])->name('scategory.update');
        Route::delete('service-category/destroy', [ServiceCategoryController::class, 'destroy'])->name('scategory.destroy');

        // Service controller 
        Route::controller(ServiceController::class)->name('service.')->group(function(){
            Route::get('service','index')->name('index');
            Route::get('service/create',  'create')->name('create');
            Route::post('service/store', 'store')->name('store');
            Route::get('service/edit/{blog}',  'edit')->name('edit');
            Route::put('service/update/{blog}','update')->name('update');
            Route::delete('service-delete/{blog}', 'destroy')->name('destroy');
           
        });




        // Blog Controller @s 
        Route::controller(BlogController::class)->name('blog.')->group(function(){
            Route::get('blog','index')->name('index');
            Route::get('blog/create',  'create')->name('create');
            Route::post('blog/store', 'store')->name('store');
            Route::get('blog/edit/{blog}',  'edit')->name('edit');
            Route::put('blog/update/{blog}','update')->name('update');
            Route::delete('blog-delete/{blog}', 'destroy')->name('destroy');
            Route::get('blog/get/subcategory/{id}', 'getSubcategory')->name('getSubcategory');
        });
        // Blog Controller ends
        // Subscription Plan @s
        Route::controller(SubscriptionController::class)->name('subscription.')->group(function(){
            Route::get('subscription','index')->name('index');
            Route::get('subscription/create',  'create')->name('create');
            Route::post('subscription/store', 'store')->name('store');
            Route::get('subscription/edit/{plan}',  'edit')->name('edit');
            Route::put('subscription/update/{plan}','update')->name('update');
            Route::delete('subscription-delete/{plan}', 'destroy')->name('destroy');
            Route::get('user/subscription','userSubscription')->name('usersubscription');
        });

        // Category Controller @s

        Route::controller(ProductCategoryController::class)->name('category.')->group(function(){
            Route::get('category','index')->name('index');
            Route::get('category/create',  'create')->name('create');
            Route::post('category/store', 'store')->name('store');
            Route::get('category/edit/{category}',  'edit')->name('edit');
            Route::put('category/update/{category}','update')->name('update');
            Route::delete('category-delete/', 'destroy')->name('destroy');
        });

        // Category Controller @e

        // Sub Category Controller @s
        Route::controller(SubcategoryController::class)->name('subcategory.')->group(function(){
            Route::get('subcategory','index')->name('index');
            Route::get('subcategory/create',  'create')->name('create');
            Route::post('subcategory/store', 'store')->name('store');
            Route::get('subcategory/edit/{subcategory}',  'edit')->name('edit');
            Route::put('subcategory/update/{subcategory}','update')->name('update');
            Route::delete('subcategory-delete/', 'destroy')->name('destroy');
        });
        // subcategory controller @e

        // PropertyController 
        Route::controller(PropertyController::class)->name('property.')->group(function(){
            Route::get('property','index')->name('index');
            Route::delete('property-delete/{adv}', 'destroy')->name('destroy');
        });
        // Property Controller 


        // subcategory attribute @s 
        Route::get('subcategory/attribute/{id}', [SubcategoryController::class, 'attribute'])->name('attribute.index');
        Route::post('subcategory/attribute/store', [SubcategoryController::class, 'attributeStore'])->name('attribute.store');



        // Country Controller @s
        Route::controller(CountryController::class)->name('country.')->group(function(){
            Route::get('country','index')->name('index');
            Route::get('country/create',  'create')->name('create');
            Route::post('country/store', 'store')->name('store');
            Route::get('country/edit/{country}',  'edit')->name('edit');
            Route::put('country/update/{country}','update')->name('update');
            Route::delete('country-delete/', 'destroy')->name('destroy');
        });

        // Country Controller @e

        // State Controller @s
        Route::controller(StateController::class)->name('state.')->group(function(){
            Route::get('/country/datatables/{id}', 'datatables')->name('datatables');
            Route::get('state/{id}','index')->name('index');
            Route::get('state/create',  'create')->name('create');
            Route::post('state/store', 'store')->name('store');
            Route::get('state/edit/{state}',  'edit')->name('edit');
            Route::put('state/update/{state}','update')->name('update');
            Route::delete('state-delete/', 'destroy')->name('destroy');
        });

        // Cuurency Controller @s
        Route::controller(CurrencyController::class)->name('currency.')->group(function(){
            Route::get('currency','index')->name('index');
            Route::get('currency/create',  'create')->name('create');
            Route::post('currency/store', 'store')->name('store');
            Route::get('currency/edit/{currency}',  'edit')->name('edit');
            Route::put('currency/update/{currency}','update')->name('update');
            Route::delete('currency-delete/', 'destroy')->name('destroy');
        });

        // Payment Gateway Controller @s 
        Route::controller(PaymentGatewayController::class)->name('gateway.')->group(function(){
            Route::get('gateway','index')->name('index');
            Route::get('gateway/create',  'create')->name('create');
            Route::post('gateway/store', 'store')->name('store');
            Route::get('gateway/edit/{gateway}',  'edit')->name('edit');
            Route::put('gateway/update/{gateway}','update')->name('update');
            Route::delete('gateway-delete/{id}', 'destroy')->name('destroy');

        });

        
        
        // Team Controller @s 
        Route::get('/manage-team', [TeamController::class, 'index'])->name('team.index');
        Route::get('/create-team', [TeamController::class, 'create'])->name('team.create');
        Route::post('/store-team', [TeamController::class, 'store'])->name('team.store');
        Route::get('/edit-team/{id}', [TeamController::class, 'edit'])->name('team.edit');
        Route::put('/update-team/{id}', [TeamController::class, 'update'])->name('team.update');
        Route::delete('/delete-team', [TeamController::class, 'destroy'])->name('team.destroy');
        
        // Team Controller ends

        // Faq Controller @s
        Route::get('/faq', [FaqController::class, 'index'])->name('faq.index');
        Route::post('/faq/store', [FaqController::class, 'store'])->name('faq.store');
        Route::put('/faq/update/{id}', [FaqController::class, 'update'])->name('faq.update');
        Route::delete('/faq/destroy', [FaqController::class, 'destory'])->name('faq.destroy');

        // Faq Controller ends

        // Brand Controller @s
        Route::get('brand', [BrandController::class, 'index'])->name('brand.index');
        Route::post('brand/store', [BrandController::class, 'store'])->name('brand.store');
        Route::put('brand/update/{brand}', [BrandController::class, 'update'])->name('brand.update');
        Route::delete('brand-delete', [BrandController::class, 'destroy'])->name('brand.destroy');
        // Brand Controller ends

        // About Controller @s
        Route::get('about', [AboutController::class, 'index'])->name('about.index');
        Route::put('about/update', [AboutController::class, 'update'])->name('about.update');
        

        
        // Testimonial Controller @s
        Route::get('/manage-testimonial', [ManageTestimonialController::class, 'index'])->name('testimonial.index');
        Route::post('/add-testimonial', [ManageTestimonialController::class, 'store'])->name('testimonial.store');
        Route::put('/update-testimonial/{id}', [ManageTestimonialController::class, 'update'])->name('testimonial.update');
        Route::delete('/delete-testimonial', [ManageTestimonialController::class, 'destroy'])->name('testimonial.destroy');
        // Testimonial Controller ends

        // Social Controller @s
        Route::get('social/link', [SocialController::class, 'index'])->name('social.manage');
        Route::post('add/social/link', [SocialController::class, 'store'])->name('social.store');
        Route::put('update/social/link/{id}', [SocialController::class, 'update'])->name('social.update');
        Route::delete('destroy/social/link', [SocialController::class, 'destroy'])->name('social.destroy');
        // Social Controller ends

        
        // General Setting Controller @s
        Route::get('/general-settings/status/update/{value}', [GeneralSettingController::class, 'StatusUpdate'])->name('gs.status');
        Route::post('/general-settings/update', [GeneralSettingController::class, 'update'])->name('gs.update');
        Route::post('/general-settings/mainupdate', [GeneralSettingController::class, 'mainupdate'])->name('gs.mainupdate');
        Route::get('header/section', [GeneralSettingController::class, 'header_section'])->name('header.section');
        Route::post('header/section/update', [GeneralSettingController::class, 'header_section_update'])->name('header.section.update');

        // Role Manage Controll @s 
        Route::get('/role', [ManageRoleController::class, 'index'])->name('role.index');
        Route::get('/role/create', [ManageRoleController::class, 'create'])->name('role.create');
        Route::post('/role/store', [ManageRoleController::class, 'store'])->name('role.store');
        Route::get('/role/edit/{id}', [ManageRoleController::class, 'edit'])->name('role.edit');
        Route::put('/role/update/{id}', [ManageRoleController::class, 'update'])->name('role.update');
        Route::delete('/role/delete', [ManageRoleController::class, 'destroy'])->name('role.destroy');

        // Role Manage Controll @e 

        // Contact Controller @s 
        Route::get('/contact/page/setting', [ContactController::class, 'index'])->name('contact.setting.index');
        Route::get('/contact/message', [ContactController::class, 'contactMessage'])->name('contact.message');
        Route::get('/getintouch/message', [ContactController::class, 'getintouch'])->name('contact.getintouch.message');
        Route::delete('/contact/message/delete', [ContactController::class, 'contactMessageDelete'])->name('contact.message.delete');
        Route::put('/contact/page/setting/update', [ContactController::class, 'update'])->name('contact.setting.update');
        

        
        Route::delete('/subscriber/delete', [AdminController::class, 'subscribersDelete'])->name('subscriber.destroy');
        Route::post('add/staff', [ManageStaffController::class, 'addStaff'])->name('staff.add');
        Route::post('update/staff/{id}', [ManageStaffController::class, 'updateStaff'])->name('staff.update');
        Route::delete('destroy/staff', [ManageStaffController::class, 'destroy'])->name('staff.destroy');




//    SEO Tools @s
Route::controller(SeoController::class)->name('seo.')->group(function(){
    Route::get('/seo','index')->name('index');
    Route::post('/seo/update', 'update')->name('update');
});


            //pages
            Route::get('page', [PageController::class, 'index'])->name('page.index');
            Route::get('page/create', [PageController::class, 'create'])->name('page.create');
            Route::get('page/edit/{page}', [PageController::class, 'edit'])->name('page.edit');

            // Contact section
            Route::get('contact/section', [GeneralSettingController::class, 'contact_section'])->name('contact.section');
            // manage testimonail
            
            Route::get('hero/page', [GeneralSettingController::class, 'hero_page'])->name('hero.page');
            //==================================== GENERAL SETTING SECTION ==============================================//

            Route::get('/general-settings', [GeneralSettingController::class, 'siteSettings'])->name('gs.site.settings');
            Route::get('/plugin-settings', [GeneralSettingController::class, 'pluginSettings'])->name('gs.plugin.settings');
            Route::get('/maintainance-settings', [GeneralSettingController::class, 'maintainance'])->name('gs.maintainance.settings');
           
            Route::get('/general-settings/logo-favicon', [GeneralSettingController::class, 'logo'])->name('gs.logo');
            Route::get('/general-settings/breadcumb', [GeneralSettingController::class, 'breadcumb'])->name('gs.breadcumb');
            Route::get('/general-settings/maintenance', [GeneralSettingController::class, 'maintenance'])->name('gs.maintenance');
            Route::get('email/setting',[EmailController::class, 'config'])->name('email.setting');
            Route::post('email/setting',[EmailController::class, 'configUpdate'])->name('email.setting.update');

            //cookie
            // theme
            Route::get('/theme-settings', [GeneralSettingController::class, 'themeSettings'])->name('gs.theme.settings');
            //==================================== GENERAL SETTING SECTION ==============================================//

            //manage staff
            Route::get('manage/staff', [ManageStaffController::class, 'index'])->name('staff.manage');
            

            Route::get('manage/subscribers', [AdminController::class, 'subscribers'])->name('subscriber');

        Route::get('/clear-cache', function () {
            Artisan::call('optimize:clear');
            return back()->with('success', 'Cache cleared successfully');
        })->name('clear.cache');

    });

});



Route::middleware(['maintenance'])->group(function () {

    // user controller start from here
    Route::prefix('user')->group(function() {

        Route::post('/login', [UserLoginController::class,'login'])->name('user.login.submit');
        Route::post('/register', [RegisterController::class,'register'])->name('user.register.submit');
        Route::get('/register/verify/{token}', 'Owner\RegisterController@token')->name('user.register.token');

        // AuthUser route
        Route::middleware('email_verify')->group(function () {
            
        Route::get('/dashboard', [UserController::class,'index'])->name('user.dashboard');
        Route::get('/verification', [UserController::class,'verification'])->name('user.verification');
        Route::post('/verification', [UserController::class,'verificationSubmit'])->name('user.verification.submit');

        Route::post('/profile/update', [UserController::class,'profileUpdate'])->name('user.profile.update');

        Route::get('/my-properties', [MyPropertyController::class,'index'])->name('user.my.properties');

        Route::post('/stripe-submit', [StripeController::class,'store'])->name('stripe.submit');
        Route::get('/checkout/payment/success', [StripeController::class,'success'])->name('checkout.success');
        Route::get('/stripe/cancle', [StripeController::class,'cancel'])->name('stripe.cancel');

        // message route 
        Route::get('/message', [UserController::class,'message'])->name('user.message');
        // post reply
        Route::post('/post/reply/{id}', [UserController::class,'postReply'])->name('user.message.reply');

        // Logout Route
        Route::get('/logout', [UserLoginController::class,'logout'])->name('user.logout');

        });
        

    });

    Route::get('/',[FrontendController::class, 'index'])->name('home');
    // blog 
    Route::get('/blog',[FrontendController::class, 'blog'])->name('blog');
    Route::get('/blog/{id}',[FrontendController::class, 'blogDetails'])->name('blog.details');
    Route::get('/plan',[FrontendController::class, 'plan'])->name('plan');
    Route::get('/about',[FrontendController::class, 'about'])->name('about');
    Route::get('/contact',[FrontendController::class, 'contact'])->name('contact');
    Route::get('/page/{slug}',[FrontendController::class, 'page'])->name('page');
    Route::get('/choose/advert/category',[FrontendController::class, 'chooseAdvertCategory'])->name('choose.advert.category');
    Route::get('/browse/advert/category',[FrontendController::class, 'browseAdvertCategory'])->name('browse.advert.category');

    // browse all services 
    Route::get('/browse/all/services',[FrontendController::class, 'browseAllServices'])->name('browse.all.services');
    // details page 
    Route::get('/service/details/{id}',[FrontendController::class, 'serviceDetails'])->name('service.details');
    // Post advert route
    Route::get('/post/advert/{slug}/{type}',[PostAdController::class, 'index'])->name('post.advert');
    Route::get('/load/attribute/{id}',[PostAdController::class, 'getSubcategory'])->name('load.attribute');
    Route::post('/advertisement/post/',[PostAdController::class, 'store'])->name('advertisement.post');

    Route::post('/subscribe', [FrontendController::class,'subscribe'])->name('front.subscribe');
    // Browse Advert
    Route::get('/browse/advert/{slug}/{type}',[FrontendController::class, 'browseAdvert'])->name('browse.advert');
    // Advertise details page 
    Route::get('/advertise/details/{id}/latest',[FrontendController::class, 'advertiseDetails'])->name('advertise.details');


    // POST SERVICE SECTION HERE 
    Route::get('/service',[FrontendController::class, 'service'])->name('service');
    Route::post('/service/post',[FrontendController::class, 'servicePost'])->name('service.post');
    Route::get('/service/edit/{blog}',[FrontendController::class, 'serviceEdit'])->name('service.edit');
    Route::post('/service/update/{blog}',[FrontendController::class, 'serviceUpdate'])->name('service.update');
    // contact property user 
    Route::middleware('email_verify')->group(function () {
        Route::post('/contact/property/user',[FrontendController::class, 'contactPropertyUser'])->name('contact.property.user');
        Route::post('/contact/submit', [FrontendController::class, 'contactSubmit'])->name('front.contact.submit');

    });
    
   

});

Route::get('/maintenance', [FrontendController::class, 'maintenance'])->name('front.maintenance');
