<?php

namespace App\Providers;

use App\Models\Blog;
use App\Models\ContactPage;
use App\Models\Currency;
use App\Models\Generalsetting;
use App\Models\Page;
use App\Models\HeaderSection;
use App\Models\SocialLink;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
      

        view()->composer('*', function ($settings) {
            $settings->with('gs',Generalsetting::first());
            $settings->with('pages',Page::get());
            $settings->with('fblog',Blog::orderBy('created_at','desc')->where('status',1)->take(6)->get());
            $settings->with('currency',Currency::where('is_default','=',1)->first());
            $settings->with('fcontact',ContactPage::first());
            $settings->with('social_links',SocialLink::get());
            $settings->with('section',HeaderSection::first());
           

        });
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrap();
    }
}
