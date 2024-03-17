

<div class="form-group col-md-6">
    <label>@lang('Where do you want to live? ')</label>
    <input type="text" class="form-control" placeholder="Street Name" name="street" required>
</div>

{{-- input subcategory_id  --}}
<input type="hidden" name="subcategory_id" value="0">

<div class="form-group col-md-6">
    <label>@lang('Post Code')</label>
    <input type="text" class="form-control" placeholder="Post Code" name="postcode" required>
</div>

<input type="hidden" name="type" value="rent">


<div class="form-group col-md-6">
    <label>@lang('Town')</label>
    <input type="text" class="form-control" placeholder="Town" name="location" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Buddy up')</label>
    <select id="buddy_up" class="form-control" name="is_buddy_up">
        <option value="1">@lang('Yes')</option> 
        <option value="0">@lang('No')</option>
        
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Room Sizes')</label>
    <select id="room" class="form-control" name="room_sizes">
        <option value="0">@lang('A single room')</option> 
        <option value="1">@lang('Double room')</option> 
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Period Accomodation Needed For')</label>
    <input type="number" class="form-control" placeholder="Maximum number in months" name="period_accomodation" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('I want to stay in the accommodation')</label>
    <select id="room" class="form-control" name="accomodation_for">
        <option value="7 days aa week">@lang('7 Days a week')</option> 
        <option value="Mon to Fri Only">@lang('Mon to Fri Only')</option> 
        <option value="Weekends Only">@lang('Weekends Only')</option>
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Budget')</label>
    <input type="number" class="form-control" placeholder="{{ $currency->name }} budget per month" name="budget" required>
</div>


<div class="form-group col-md-6">
    <label>@lang('I am available to move in from')</label>
    <input type="date" class="form-control" placeholder="" name="move_from" required>
</div>

<div class="form-group col-md-12 mb-5">
    <label>@lang('I would prefer these amenities')</label>
    <div class="o-features">
        <ul class="row d-flex">
            <li class="col-md-4">
                <input id="furnish" class="checkbox-custom" value="Furnish" name="amenities[]" type="checkbox">
                <label for="furnish" class="checkbox-custom-label">@lang('Furnished')</label>
            </li>  
            <li class="col-md-4">
                <input id="living" class="checkbox-custom" value="Shared living room" name="amenities[]" type="checkbox">
                <label for="living" class="checkbox-custom-label">@lang('Shared living room')</label>
            </li> 
            <li class="col-md-4">
                <input id="washing" class="checkbox-custom" value="Washing machine" name="amenities[]" type="checkbox">
                <label for="washing" class="checkbox-custom-label">@lang('Washing machine')</label>
            </li> 
            <li class="col-md-4">
                <input id="garden" class="checkbox-custom" value="Garden or roof terrace" name="amenities[]" type="checkbox">
                <label for="garden" class="checkbox-custom-label">@lang('Garden or roof terrace')</label>
            </li> 
            <li class="col-md-4">
                <input id="balcony" class="checkbox-custom" value="Balcony or patio" name="amenities[]" type="checkbox">
                <label for="balcony" class="checkbox-custom-label">@lang('Balcony/patio')</label>
            </li> 
            <li class="col-md-4">
                <input id="parking" class="checkbox-custom" value="Parking" name="amenities[]" type="checkbox">
                <label for="parking" class="checkbox-custom-label">@lang('Parking')</label>
            </li>
            <li class="col-md-4">
                <input id="garage" class="checkbox-custom" value="Garage" name="amenities[]" type="checkbox">
                <label for="garage" class="checkbox-custom-label">@lang('Garage')</label>
            </li>
            <li class="col-md-4">
                <input id="disabled" class="checkbox-custom" value="Disabled access" name="amenities[]" type="checkbox">
                <label for="disabled" class="checkbox-custom-label">@lang('Disabled access')</label>
            </li>
            <li class="col-md-4">
                <input id="broadband" class="checkbox-custom" value="Broadband" name="amenities[]" type="checkbox">
                <label for="broadband" class="checkbox-custom-label">@lang('Broadband')</label>
            </li>
            <li class="col-md-4">
                <input id="ensuite" class="checkbox-custom" value="En-suite" name="amenities[]" type="checkbox">
                <label for="ensuite" class="checkbox-custom-label">@lang('En-suite')</label>
            </li>
        </ul>
    </div>
</div>

<div class="head-ta w-100 mb-4">
    <h3>@lang('About you')</h3>
</div>

{{-- input hidden --}}
<input type="hidden" name="is_room_wanted" value="1">

<div class="form-group col-md-6">
    <label>@lang('Age')</label>
    <input type="number" class="form-control" placeholder="Your age" name="age" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Occupation')</label>
    <input type="text" class="form-control" placeholder="Your occupation" name="occupation" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Your Nationality')</label>
    <input type="text" class="form-control" placeholder="Your Nationality" name="nationality" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Language You Speak')</label>
    <input type="text" class="form-control" placeholder="Your Preferred Language" name="language" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Gender')</label>
    <select id="room" class="form-control" name="gender">
        <option value="female">@lang('Female')</option> 
        <option value="male">@lang('Male')</option> 
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Your Name')</label>
    <input type="text" class="form-control" placeholder="Your Name" name="your_name" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Do you Smoke?')</label>
    <select id="room" class="form-control" name="smoke">
        <option value="0">@lang('No')</option> 
        <option value="1">@lang('Yes')</option> 
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Do you have any Pets?')</label>
    <select id="room" class="form-control" name="pets">
        <option value="0">@lang('No')</option> 
        <option value="1">@lang('Yes')</option> 
    </select>
</div>

<div class="head-ta w-100 mb-4">
    <h3>@lang('Your preferred flatmate')</h3>
</div>
<div class="form-group col-md-6">
    <label>@lang('Gender')</label>
    <select id="room" class="form-control" name="mate_gender">
        <option value="female">@lang('Female')</option> 
        <option value="male">@lang('Male')</option> 
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Age')</label>
    <input type="number" class="form-control" placeholder="Prefered age" name="mate_age" required>
</div>
<div class="form-group col-md-6">
    <label>@lang('Occupation')</label>
    <input type="text" class="form-control" placeholder="occupation" name="mate_occupation" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Smoke?')</label>
    <select id="room" class="form-control" name="mate_smoke">
        <option value="1">@lang('Dont mind')</option> 
        <option value="0">@lang('No')</option> 
    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Do you have any Pets?')</label>
    <select id="room" class="form-control" name="mate_pets">
        <option value="0">@lang('No')</option> 
        <option value="1">@lang('Yes')</option> 
    </select>
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