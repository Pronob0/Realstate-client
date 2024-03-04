@extends('layouts.admin')
@section('title')
    @lang('Add Role')
@endsection

@section('breadcrumb')
    <section class="section">
        <div class="section-header d-flex justify-content-between">
            <h1>@lang('Add Role')</h1>
            <a href="{{ route('admin.role.index') }}" class="btn btn-primary"><i class="fas fa-backward"></i> @lang('Back')
            </a>
        </div>
    </section>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card mb-4">
                <div class="card-body">

                    <form action="{{ route('admin.role.store') }}" method="POST">
                        @csrf
                        <div class="form-group">
                            <label>@lang('Name')</label>
                            <input class="form-control" type="text" name="name">
                        </div>
                        <div class="form-group">
                            <label>@lang('Permission')</label>
                            <select name="section[]" class="select2" multiple>
                                <option value="Blog">@lang('Blog')</option>
                                <option value="Manage Country">@lang('Manage Country')</option>
                                <option value="Property">@lang('Property')</option>
                                <option value="Subscription Plan">@lang('Subscription Plan')</option>
                                <option value="Manage Contact">@lang('Manage Contact')</option>
                                <option value="EmailSetting Section">@lang('EmailSetting Section')</option>
                                <option value="Currency & Payment">@lang('Currency & Payment')</option>
                                <option value="Manage Pages">@lang('Manage Pages')</option>
                                <option value="Manage Team">@lang('Manage Team')</option>
                                <option value="General Settings">@lang('General Settings')</option>
                                <option value="Frontend Settings">@lang('Frontend Settings')</option>
                                <option value="Manage Role">@lang('Manage Role')</option>
                                <option value="Manage Staff">@lang('Manage Staff')</option>
                                <option value="Subscribers">@lang('Subscribers')</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--Row-->
@endsection
