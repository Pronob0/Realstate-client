


<div class="form-group col-md-6">
    <label>@lang('Region')</label>
    <select id="region" class="form-control" name="region">
        
        <option value="Wales">@lang('Wales')</option> 
        <option value="East Midlands">@lang('East Midlands')</option> 
        <option value="East of England">@lang('East of England')</option>
        <option value="London">@lang('London')</option>
        <option value="North East & Cumbria">@lang('North East & Cumbria')</option>
        <option value="North West">@lang('North West')</option>
        <option value="Northern Ireland">@lang('Northern Ireland')</option>
        <option value="Scotland">@lang('Scotland')</option>
        <option value="South East">@lang('South East')</option>
        <option value="South West">@lang('South West')</option>
        <option value="West Midlands">@lang('West Midlands')</option>
        <option value="Yorkshire & Humberside">@lang('Yorkshire & Humberside')</option>

    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Road Name')</label>
    <input type="text" class="form-control" placeholder="Road Name" name="street" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Post Code')</label>
    <input type="text" class="form-control" placeholder="Post Code" name="postcode" required>
</div>



<div class="form-group col-md-6">
    <label>@lang('Nearest Train Station')</label>
    <input type="text" class="form-control" placeholder="Nearest Train Station" name="train_station" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('HMO Licence Permitted')</label>
    <select id="hmo" class="form-control" name="hmo">
        <option value="Yes">@lang('Yes')</option> 
        <option value="No">@lang('No')</option> 
        <option value="NA">@lang('NA')</option>
    </select>
</div>


<div class="head-ta w-100 mb-4">
    <h3>@lang('Rent Information')</h3>
</div>
<br>
<div class="form-group col-md-6">
    <label>@lang('Current Rent per month')</label>
    <input type="number" class="form-control" placeholder="Current Rent per month {{ $currency->name }}" name="rent_pm" required>
</div>
<div class="form-group col-md-6">
    <label>@lang('Potential rent per month')</label>
    <input type="number" class="form-control" placeholder="Potential rent per month {{ $currency->name }}" name="potential_rent" required>
</div>
<div class="head-ta w-100 mb-4">
    <h3>@lang('Cost Information')</h3>
</div>
<br>


@if($category->subcategory_id == 5)

<div class="form-group col-md-6">
    <label>@lang('Rent Deposit Required')</label>
    <input type="number" class="form-control" placeholder="Rent Deposit {{ $currency->name }}" name="rent_deposit" required>
</div>
<div class="form-group col-md-6">
    <label>@lang('Damage Deposit Required')</label>
    <input type="number" class="form-control" placeholder="Damage Deposit {{ $currency->name }}" name="damage_deposit" required>
</div>
@endif

<div class="form-group col-md-6">
    <label>@lang('Agency/Sourcing Fee')</label>
    <input type="number" class="form-control" placeholder="Agency/Sourcing Fee {{ $currency->name }}" name="agency_fee" required>
</div>



<div class="head-ta w-100 mb-4">
    <h3>@lang('Property Photos')</h3>
</div>

  <div class="upload__box">
    <div class="upload__btn-box">
        <h6>Drag a photo here, or click "Add Photos" to select your photos</h6>
      <label class="upload__btn">
       
        <p>Upload images</p>
        <input type="file" multiple="" data-max_length="20" class="upload__inputfile" name="photo[]">
      </label>
    </div>
    <div class="upload__img-wrap"></div>
  </div>  
  
  {{-- Floor Plan Picture upload --}}
  <div class="form-group col-md-12">
    <label><b>@lang('Floor Plan Photo')</b></label>
    <input  type="file" class="form-control" placeholder="Agency/Sourcing Fee" name="floor_pic" >
</div>
   
    
        {{-- EPC Picture upload --}}