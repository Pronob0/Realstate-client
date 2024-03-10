<aside id="sidebar-wrapper">
        <ul class="sidebar-menu mb-5">
            <li class="menu-header">@lang('Dashboard')</li>
            <li class="nav-item {{ menu('admin.dashboard') }}">
                <a href="{{ route('admin.dashboard') }}" class="nav-link"><i
                        class="fas fa-fire"></i><span>@lang('Dashboard')</span></a>
            </li>

            <li class="nav-item {{menu('admin.transactions')}}">
                <a href="{{route('admin.transactions')}}" class="nav-link"><i
                    class="fas fa-exchange-alt"></i><span>@lang('Transaction Report')</span></a>
              </li>

            <li class="menu-header">@lang('Manage')</li>
               
                <li class="nav-item {{menu(['admin.user.index','admin.user.details'])}}">
                <a href="{{route('admin.user.index')}}" class="nav-link"><i class="fas fa-users"></i><span>@lang('Manage
                    User')</span></a>
             </li>
              
    
    
            <li class="nav-item dropdown {{ menu(['admin.bcategory*', 'admin.bsubcategory*','admin.blog*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fab fa-blogger-b"></i>
                    <span>@lang('Blogs')</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ menu('admin.bcategory.index') }}"><a class="nav-link"
                            href="{{ route('admin.bcategory.index') }}">@lang('Category')</a></li>

                    <li class="{{ menu('admin.blog.index') }}"><a class="nav-link"
                            href="{{ route('admin.blog.index') }}">@lang('Blogs')</a>
                    </li>
                </ul>
            </li>

            <li class="nav-item dropdown {{ menu(['admin.scategory*','admin.service*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fab fa-blogger-b"></i>
                    <span>@lang('Services')</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ menu('admin.scategory.index') }}"><a class="nav-link"
                            href="{{ route('admin.scategory.index') }}">@lang('Category')</a></li>

                    <li class="{{ menu('admin.service.index') }}"><a class="nav-link"
                            href="{{ route('admin.service.index') }}">@lang('Services')</a>
                    </li>
                </ul>
            </li>

            {{-- COuntry & City @s  --}}
            <li class="nav-item {{ menu(['admin.country.index']) }}">
                <a href="{{ route('admin.country.index') }}" class="nav-link"><i class="fas fa-envelope-open-text"></i>
                    <span>@lang('Manage Country')</span></a>
            </li>
            
            {{-- Country & City --}}

            <li class="menu-header">@lang('General')</li>

            <li class="nav-item dropdown {{ menu(['admin.category*','admin.subcategory*','admin.property*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fab fa-blogger-b"></i>
                    <span>@lang('Property')</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ menu('admin.category.index') }}"><a class="nav-link"
                            href="{{ route('admin.category.index') }}">@lang('Category')</a></li>
                            <li class="{{ menu('admin.subcategory.index') }}"><a class="nav-link"
                                href="{{ route('admin.subcategory.index') }}">@lang('Subcategory')</a></li>
                            <li class="{{ menu('admin.property.index') }}"><a class="nav-link"
                                href="{{ route('admin.property.index') }}">@lang('All Property')</a></li>
                </ul>
            </li>

            <li class="menu-header">@lang('Subscription')</li>
            <li class="nav-item dropdown {{ menu(['admin.subscription*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fab fa-blogger-b"></i>
                    <span>@lang('Subscription Plan')</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ menu('admin.subscription.index') }}"><a class="nav-link"
                            href="{{ route('admin.subscription.index') }}">@lang('Subscription Plan')</a></li>

                            <li class="{{ menu('admin.subscription.usersubscription') }}"><a class="nav-link"
                                href="{{ route('admin.subscription.usersubscription') }}">@lang('User Subscription')</a></li>
                </ul>
            </li>


            <li class="nav-item dropdown {{ menu(['admin.contact*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-envelope-open-text"></i></i>
                    <span>@lang('Manage Contact')</span></a>
                <ul class="dropdown-menu">
                   
                    <li class="{{ menu('admin.contact.message') }}"><a class="nav-link"
                            href="{{ route('admin.contact.message') }}">@lang('Contact Messages')</a>
                    </li>
                    <li class="{{ menu('admin.contact.setting.index') }}"><a class="nav-link"
                            href="{{ route('admin.contact.setting.index') }}">@lang('Contact Setting')</a></li>
                </ul>
            </li>
    
           

           
            <li class="nav-item">
                <a class="nav-link" href="{{ route('admin.email.setting') }}">
                    <i class="fas fa-envelope"></i>
                    <span>@lang('EmailSetting Section')</span></a>
            </li>

            {{-- currency start here  --}}
            <li class="menu-header">@lang('Currency & Payments')</li>
            <li class="nav-item dropdown {{ menu(['admin.currency*', 'admin.gateway*']) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fab fa-blogger-b"></i>
                    <span>@lang('Currency & Payment')</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ menu('admin.currency.index') }}"><a class="nav-link"
                            href="{{ route('admin.currency.index') }}">@lang('Currency')</a></li>

                    <li class="{{ menu('admin.gateway.index') }}"><a class="nav-link"
                            href="{{ route('admin.gateway.index') }}">@lang('Payment Gateway')</a>
                    </li>
                </ul>
            </li>
            {{-- Currency Ends here  --}}

            
    
            
    
            <li class="nav-item {{ menu('admin.page.index*') }}">
                <a href="{{ route('admin.page.index') }}" class="nav-link"><i class="fas fa-file-alt"></i><span>@lang('Manage Pages')</span></a>
            </li>
    
    
            <li class="nav-item {{ menu('admin.team*') }}">
                <a href="{{ route('admin.team.index') }}" class="nav-link"><i class="fas fa-users-cog"></i>
                    <span>@lang('Manage Team')</span></a>
            </li>
    
    
    
    
            <li class="menu-header">@lang('General')</li>
    
            <li class="nav-item dropdown {{ menu(['admin.gs*','admin.social.manage*','admin.language*', 'admin.cookie', ]) }}">
                <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i
                        class="fas fa-cog"></i><span>@lang('General Settings')</span></a>
                <ul class="dropdown-menu">
    
                    <li class="{{ menu('admin.gs.site.settings') }}"><a class="nav-link"
                            href="{{ route('admin.gs.site.settings') }}">@lang('Site Settings')</a></li>
                    
                    <li class="{{ menu('admin.gs.logo') }}"><a class="nav-link"
                            href="{{ route('admin.gs.logo') }}">@lang('Logo & Favicon')</a></li>
                    
                    <li class="{{ menu('admin.gs.breadcumb') }}"><a class="nav-link"
                            href="{{ route('admin.gs.breadcumb') }}">@lang('Banner')</a></li>
                    <li class="{{ menu('admin.social.manage') }}"><a class="nav-link"
                            href="{{ route('admin.social.manage') }}">@lang('Social Links')</a></li>
                    <li class="{{ menu('admin.cookie') }}"><a class="nav-link"
                            href="{{ route('admin.cookie') }}">@lang('Cookie Concent')</a></li>
                    <li class="{{ menu('admin.language') }}"><a class="nav-link"
                            href="{{ route('admin.language') }}">@lang('Language')</a></li>
                    <li class="{{ menu('admin.gs.plugin.settings') }}"><a class="nav-link"
                            href="{{ route('admin.gs.plugin.settings') }}">@lang('Plugins')</a></li>
                    <li class="{{ menu('admin.gs.maintenance') }}"><a class="nav-link"
                            href="{{ route('admin.gs.maintenance') }}">@lang('Maintenance')</a></li>
                </ul>
            </li>
    
    
    
            <li
                class="nav-item dropdown {{ menu(['admin.front*','admin.faq*','admin.testimonial*','admin.brand*','admin.contact.section','admin.about*','admin.slider*', 'admin.frontend*','admin.hero.page','admin.header*']) }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-th"></i>
                    <span>@lang('Frontend Setting')</span></a>
                <ul class="dropdown-menu">
                        <li class="{{ menu('admin.hero.page') }}"><a class="nav-link"
                                href="{{ route('admin.hero.page') }}">@lang('Hero Section')</a></li>
                    <li class="{{ menu('admin.about.index') }}"><a class="nav-link"
                            href="{{ route('admin.about.index') }}">@lang('About')</a></li>
                   
                    <li class="{{ menu('admin.faq.index') }}"><a class="nav-link"
                            href="{{ route('admin.faq.index') }}">@lang('FAQ')</a></li>
                    
                    <li class="{{ menu('admin.testimonial.index') }}"><a class="nav-link"
                            href="{{ route('admin.testimonial.index') }}">@lang('Testimonials')</a></li>
                    <li class="{{ menu('admin.brand.index') }}"><a class="nav-link"
                            href="{{ route('admin.brand.index') }}">@lang('Brand')</a></li>
                    <li class="{{ menu('admin.header.section') }}"><a class="nav-link"
                                href="{{ route('admin.header.section') }}">@lang('Header Section')</a></li>
                </ul>
            </li>
    
            <li class="menu-header">@lang('Staff and Role')</li>
            <li class="nav-item {{ menu('admin.role*') }}">
                <a href="{{ route('admin.role.index') }}" class="nav-link"><i class="far fa-question-circle"></i><span>@lang('Manage Role')</span></a>
            </li>
    
    
            <li class="nav-item {{ menu('admin.staff*') }}">
                <a href="{{ route('admin.staff.manage') }}" class="nav-link"><i
                        class="fas fa-user-shield"></i><span>@lang('Manage Staff')</span></a>
            </li>
    
            <li class="nav-item {{ menu('admin.subscriber') }}">
                <a href="{{ route('admin.subscriber') }}" class="nav-link"><i class="fas fa-users"></i>
                    <span>@lang('Subscribers')</span></a>
            </li>

            <li class="nav-item {{ menu('admin.seo*') }}">
                <a href="{{ route('admin.seo.index') }}" class="nav-link"><i
                        class="fas fa-user-shield"></i><span>@lang('Manage SEO-Tools')</span></a>
            </li>
    
            <li class="nav-item {{ menu('admin.clear.cache') }}">
                <a href="{{ route('admin.clear.cache') }}" class="nav-link"><i class="fas fa-broom"></i>
                    <span>@lang('Clear Cache')</span></a>
            </li>
        
    
        </ul>
    </aside>
    