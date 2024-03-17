
<div class="form-group col-md-6">
    <label>@lang('Street Name')</label>
    <input type="text" class="form-control" placeholder="Street Name" name="street" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Post Code')</label>
    <input type="text" class="form-control" placeholder="Post Code" name="postcode" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Furnished')</label>
    <select id="furnished" class="form-control" name="furnished">
        <option value="Fully">@lang('Fully')</option> 
        <option value="Partially">@lang('Partially')</option> 
        <option value="No">@lang('No')</option>
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Town')</label>
    <input type="text" class="form-control" placeholder="Town" name="location" required>
</div>

<div class="head-ta w-100 mb-4">
    <h3>@lang('Tenancy Details')</h3>
</div>
<br>
<input type="hidden" name="is_tenancy" value="1">

<div class="form-group col-md-6">
    <label>@lang('Monthly Rent For Single Room ')</label>
    <input type="number" class="form-control" placeholder="{{ $currency->name }}" name="monthly_rent" required>
</div>
 
<div class="form-group col-md-6">
    <label>@lang('Minimum Tenancy Length ')</label>
    <input type="number" class="form-control" placeholder="Months" name="month" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Weekly Rent For Single Room')</label>
    <input type="number" class="form-control" placeholder="{{ $currency->name }}" name="weekly_rent" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Maximum Number of Tenants ')</label>
    <input type="number" class="form-control" placeholder="maximum number of tenants" name="tenance_number" required>
</div>
<div class="form-group col-md-6">
    <label>@lang('Deposit Amounts')</label>
    <input type="number" class="form-control" placeholder="{{ $currency->name }}" name="deposit" required>
</div>
<div class="form-group col-md-6">
    <label>@lang('Earliest Move In Date')</label>
    <input type="date" class="form-control" placeholder="" name="date" required>
</div>

<div class="head-ta w-100 mb-4">
    <h3>@lang('features')</h3>
</div>
<br>

<div class="form-group col-md-12 mb-5">

    <div class="o-features">
        <ul class="row d-flex">
            <li class="col-md-4">
                <input id="bill" class="checkbox-custom" value="bill_included" name="features[]" type="checkbox">
                <label for="bill" class="checkbox-custom-label">@lang('Bills Included')</label>
            </li>  
            <li class="col-md-4">
                <input id="parking" class="checkbox-custom" value="parking" name="features[]" type="checkbox">
                <label for="parking" class="checkbox-custom-label">@lang('parking')</label>
            </li> 
            <li class="col-md-4">
                <input id="garden" class="checkbox-custom" value="garden_access" name="features[]" type="checkbox">
                <label for="garden" class="checkbox-custom-label">@lang('Garden Access')</label>
            </li> 
            <li class="col-md-4">
                <input id="fire" class="checkbox-custom" value="fire_access" name="features[]" type="checkbox">
                <label for="fire" class="checkbox-custom-label">@lang('Fire Access')</label>
            </li> 
        </ul>
    </div>
</div>


<div class="head-ta w-100 mb-4">
    <h3>@lang('Tenance Preference')</h3>
</div>
<br>
<div class="form-group col-md-12 mb-5">

    <div class="o-features">
        <ul class="row d-flex">
            <li class="col-md-4">
                <input id="student" class="checkbox-custom" value="students_allowed" name="tenance[]" type="checkbox">
                <label for="student" class="checkbox-custom-label">@lang('Students Allowed')</label>
            </li>  

            <li class="col-md-4">
                <input id="pets" class="checkbox-custom" value="pets_allowed" name="tenance[]" type="checkbox">
                <label for="pets" class="checkbox-custom-label">@lang('Pets Allowed')</label>
            </li> 
            <li class="col-md-4">
                <input id="families" class="checkbox-custom" value="families_allowed" name="tenance[]" type="checkbox">
                <label for="families" class="checkbox-custom-label">@lang('Families Allowed')</label>
            </li>
            <li class="col-md-4">
                <input id="smokers" class="checkbox-custom" value="smokers_allowed" name="tenance[]" type="checkbox">
                <label for="smokers" class="checkbox-custom-label">@lang('Smokers Allowed')</label>
            </li>
            <li class="col-md-4">
                <input id="dss" class="checkbox-custom" value="dss_income_accepted" name="tenance[]" type="checkbox">
                <label for="dss" class="checkbox-custom-label">@lang('Dss Income Accepted')</label>
            </li>

        </ul>
    </div>
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