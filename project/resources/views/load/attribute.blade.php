

<br>
@if (isset($attributes))

@if(count($attributes->strategy) > 1)

<div class="form-group col-md-12">
    <label>Strategy</label>
    <select id="plot_usage" class="form-control" name="strategy">
        @foreach ($attributes->strategy as $strategy)
        <option value="{{ $strategy }}">{{ $strategy }}</option> 
        @endforeach
    </select>
</div>

@endif

@if(count($attributes->amenities) > 1)
   <div class="form-group col-md-12 mb-5">
        <label>Amenities required (optional)</label>
        <div class="o-features">
            <ul class="row d-flex">
                @foreach ($attributes->amenities as $amenitie)
                <li class="col-md-4">
                    <input id="a-{{ $loop->iteration }}" class="checkbox-custom" value="{{ $amenitie }}" name="amenities[]" type="checkbox">
                    <label for="a-{{ $loop->iteration }}" class="checkbox-custom-label">{{ $amenitie }}</label>
                </li>  
                @endforeach
            </ul>
        </div>
    </div>
@endif

{{-- property Type  --}}

@if(count($attributes->property_type) > 1)

@if($subcategory->category_id == 11)

<div class="form-group col-md-12 mb-5">
    <label>Type of Property required</label>
    <div class="o-features">
        <ul class="row d-flex">
            @foreach ($attributes->property_type as $propertye)
            <li class="col-md-4">
                <input id="b-{{ $loop->iteration }}" class="checkbox-custom" value="{{ $propertye }}" name="property_type[]" type="checkbox">
                <label for="b-{{ $loop->iteration }}" class="checkbox-custom-label">{{ $propertye }}</label>
            </li> 
            @endforeach
        </ul>
    </div>
</div>

@else

<div class="form-group col-md-6">
    <label>@lang('Property Type')</label>
    <select id="property_type" class="form-control" name="property_type[]">
        @foreach ($attributes->property_type as $propertye)
        <option value="{{ $propertye }}">{{ $propertye }}</option> 
        @endforeach
    </select>
</div>



@endif


@endif

{{-- property Type  --}}

@if(count($attributes->plot_usage) > 1)

<div class="form-group col-md-6">
    <label>Plot Usage</label>
    <select id="plot_usage" class="form-control" name="plot_usage">
        @foreach ($attributes->plot_usage as $plot)
        <option value="{{ $plot }}">{{ $plot }}</option> 
        @endforeach
    </select>
</div>

<div class="form-group col-md-6">
    <label>Plot Size (SQFT)</label>
    <input type="text" class="form-control" name="plot_size" placeholder="Plot Size">
    
</div>
@endif



{{-- property Type  --}}
@endif

@if ($subcategory->is_bedrooms == 1)


@if($subcategory->category_id == 11)

<div class="form-group col-md-12 mb-5">
    <label>Bedrooms required</label>
    <div class="o-features">
        <ul class="row d-flex">
            @foreach (explode(',',$subcategory->bedroom) as $bedroom)
            <li class="col-md-4">
                <input id="c-{{ $loop->iteration }}" class="checkbox-custom" value="{{ $bedroom }}" name="bedroom[]" type="checkbox">
                <label for="c-{{ $loop->iteration }}" class="checkbox-custom-label">{{ $bedroom }}</label>
            </li> 
            @endforeach
        </ul>
    </div>
</div>

@else

<div class="form-group col-md-6">
    <label>@lang('Bedrooms')</label>
    <select id="bedroom" class="form-control" name="bedroom[]">
        @foreach (explode(',',$subcategory->bedroom) as $bedroom)
        <option value="{{ $bedroom }}">{{ $bedroom }}</option> 
        @endforeach
    </select>
</div>


@endif
    
@endif

@if ($subcategory->is_bathrooms == 1)

@if($subcategory->category_id == 11)

<div class="form-group col-md-12 mb-5">
    <label>Bathrooms required</label>
    <div class="o-features">
        <ul class="row d-flex">
            @foreach (explode(',',$subcategory->bathrooms) as $bathroom)
            <li class="col-md-4">
                <input id="d-{{ $loop->iteration }}" class="checkbox-custom" value="{{ $bathroom }}" name="bathroom[]" type="checkbox">
                <label for="d-{{ $loop->iteration }}" class="checkbox-custom-label">{{ $bathroom }}</label>
            </li> 
            @endforeach
        </ul>
    </div>
</div>

@else

<div class="form-group col-md-6">
    <label>@lang('Bathrooms')</label>
    <select id="bedroom" class="form-control" name="bathroom[]">
        @foreach (explode(',',$subcategory->bathrooms) as $bathroom)
        <option value="{{ $bathroom }}">{{ $bathroom }}</option> 
        @endforeach
    </select>
</div>

@endif

@endif

@if ($subcategory->is_receptions == 1)

@if($subcategory->category_id == 11)

<div class="form-group col-md-12 mb-5">
    <label>Receptions required</label>
    <div class="o-features">
        <ul class="row d-flex">
            @foreach (explode(',',$subcategory->receptions) as $reception)
            <li class="col-md-4">
                <input id="e-{{ $loop->iteration }}" class="checkbox-custom" value="{{ $reception }}" name="reception[]" type="checkbox">
                <label for="e-{{ $loop->iteration }}" class="checkbox-custom-label">{{ $reception }}</label>
            </li> 
            @endforeach
        </ul>
    </div>
</div>

@else
<div class="form-group col-md-6">
    <label>@lang('Receptions')</label>
    <select id="reception" class="form-control" name="reception[]">
        @foreach (explode(',',$subcategory->receptions) as $reception)
        <option value="{{ $reception }}">{{ $reception }}</option> 
        @endforeach
    </select>
</div>

@endif


@endif

@if ($subcategory->is_required == 1)
<div class="form-group col-md-12">
    <label>Do you require</label>
    <select id="required" class="form-control" name="require">
        @foreach (explode(',',$subcategory->required) as $require)
        <option value="{{ $require }}">{{ $require }}</option>
        @endforeach
    </select>
</div>
@endif

@if ($subcategory->id == 6)
<div class="form-group col-md-6">
    <label>Current Occupancy</label>
    <select class="form-control" name="occupancy">
        <option value="Tenanted ">Tenanted</option>
        <option value="Vacant">Vacant</option>
    </select>
</div>
@endif

@if ($subcategory->id == 6)
<div class="form-group col-md-6">
    <label>Condition</label>
    <select class="form-control" name="condition">
        <option value="Rentable Condition">Rentable Condition</option>
        <option value="Refurb Required">Refurb Required</option>
    </select>
</div>
@endif

@if ($subcategory->id == 6)
<div class="form-group col-md-6">
    <label>Sales Price</label>
    <input type="number" class="form-control" name="sale" placeholder="Sales Price">
</div>
@endif

@if ($subcategory->id == 6)
<div class="form-group col-md-6">
    <label>Current Market Valuation</label>
    <input type="number" class="form-control" name="market_valuation" placeholder="Current Market Valuation">
</div>
@endif

@if ($subcategory->id == 6)
<div class="form-group col-md-6">
    <label>Gross Rental Yeild (%)</label>
    <input type="number" class="form-control" name="gross" placeholder="Gross Rental Yeild">
</div>
@endif

@if ($subcategory->id == 5)
<div class="form-group col-md-6">
    <label>@lang('Furnished')</label>
    <select id="furnished" class="form-control" name="furnished">
        <option value="Fully">@lang('Fully')</option> 
        <option value="Partially">@lang('Partially')</option> 
        <option value="No">@lang('No')</option>
    </select>
</div>
@endif





