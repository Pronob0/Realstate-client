<div class="form-group  col-md-6">
    <label>@lang('Desired Location')</label>
    <input type="text" class="form-control" name="location" value="{{ $advertisement->location }}" placeholder="Type Desired Location" >
</div>

<div class="form-group col-md-6">
    <label>@lang('Buyer Type')</label>
    <select id="status" class="form-control" name="buyer_type">
        <option {{ $advertisement->buyer_type== "cash" ? 'selected':'' }} value="cash">@lang('Cash Buyer')</option>
        <option {{ $advertisement->buyer_type== "mortgage" ? 'selected':'' }} value="mortgage">@lang('Mortgage')</option>
        <option {{ $advertisement->buyer_type== "mix" ? 'selected':'' }} value="mix">@lang('Cash and Mortgage')</option>
    </select>
</div>
{{-- hidden input  --}}
<input type="hidden" name="type" value="buy">

<div class="form-group col-md-6">
    <label>@lang('Buying For')</label>
    <select id="status2" class="form-control" name="buying_for">
        <option {{ $advertisement->buying_for== "living" ? 'selected':'' }} value="living">@lang('Living')</option>
        <option {{ $advertisement->buying_for== "investment" ? 'selected':'' }} value="investment">@lang('Investment')</option>
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Maximum Budget')</label>
    <input type="text" class="form-control" value="{{ $advertisement->budget }}" placeholder="{{ $currency->name }}" name="budget">
</div>