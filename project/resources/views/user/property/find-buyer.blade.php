<div class="form-group  col-md-6">
    <label>Desired Location</label>
    <input type="text" class="form-control" name="location" placeholder="Type Desired Location" >
</div>

<div class="form-group col-md-6">
    <label>@lang('Buyer Type')</label>
    <select id="status" class="form-control" name="buyer_type">
        <option value="cash">@lang('Cash Buyer')</option>
        <option value="mortgage">@lang('Mortgage')</option>
        <option value="mix">@lang('Cash and Mortgage')</option>
    </select>
</div>
{{-- hidden input  --}}
<input type="hidden" name="type" value="buy">

<div class="form-group col-md-6">
    <label>@lang('Buying For')</label>
    <select id="status2" class="form-control" name="buying_for">
        <option value="living">@lang('Living')</option>
        <option value="investment">@lang('Investment')</option>
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Maximum Budget')</label>
    <input type="text" class="form-control" placeholder="{{ $currency->name }}" name="budget">
</div>