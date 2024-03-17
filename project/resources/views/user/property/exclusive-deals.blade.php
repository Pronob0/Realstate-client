


<div class="form-group col-md-6">
    <label>@lang('Region')</label>
    <select id="region" class="form-control" name="region">
        
        <option {{ $advertisement->region == 'Wales' ? 'selected':'' }} value="Wales">@lang('Wales')</option> 
        <option {{ $advertisement->region == 'East Midlands' ? 'selected':'' }} value="East Midlands">@lang('East Midlands')</option> 
        <option {{ $advertisement->region == 'East of England' ? 'selected':'' }} value="East of England">@lang('East of England')</option>
        <option {{ $advertisement->region == 'London' ? 'selected':'' }} value="London">@lang('London')</option>
        <option {{ $advertisement->region == 'North East & Cumbria' ? 'selected':'' }} value="North East & Cumbria">@lang('North East & Cumbria')</option>
        <option {{ $advertisement->region == 'North West' ? 'selected':'' }} value="North West">@lang('North West')</option>
        <option {{ $advertisement->region == 'Northern Ireland' ? 'selected':'' }}  value="Northern Ireland">@lang('Northern Ireland')</option>
        <option {{ $advertisement->region == 'Scotland' ? 'selected':'' }} value="Scotland">@lang('Scotland')</option>
        <option {{ $advertisement->region == 'South East' ? 'selected':'' }} value="South East">@lang('South East')</option>
        <option {{ $advertisement->region == 'South West' ? 'selected':'' }} value="South West">@lang('South West')</option>
        <option {{ $advertisement->region == 'West Midlands' ? 'selected':'' }} value="West Midlands">@lang('West Midlands')</option>
        <option {{ $advertisement->region == 'Yorkshire & Humberside' ? 'selected':'' }} value="Yorkshire & Humberside">@lang('Yorkshire & Humberside')</option>

    </select>
</div>

<div class="form-group col-md-6">
    <label>@lang('Road Name')</label>
    <input type="text" class="form-control" placeholder="Road Name" name="street" value="{{  $advertisement->street  }}" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('Post Code')</label>
    <input type="text" class="form-control" placeholder="Post Code" value="{{ $advertisement->postcode }}" name="postcode" required>
</div>



<div class="form-group col-md-6">
    <label>@lang('Nearest Train Station')</label>
    <input type="text" class="form-control" value="{{ $advertisement->train_station }}" placeholder="Nearest Train Station" name="train_station" required>
</div>

<div class="form-group col-md-6">
    <label>@lang('HMO Licence Permitted')</label>
    <select id="hmo" class="form-control" name="hmo">
        <option {{ $advertisement->hmo == 'Yes' ? 'selected':'' }} value="Yes">@lang('Yes')</option> 
        <option {{ $advertisement->hmo == 'No' ? 'selected':'' }} value="No">@lang('No')</option> 
        <option {{ $advertisement->hmo == 'NA' ? 'selected':'' }} value="NA">@lang('NA')</option>
    </select>
</div>


<div class="head-ta w-100 mb-4">
    <h3>@lang('Rent Information')</h3>
</div>
<br>
<div class="form-group col-md-6">
    <label>@lang('Current Rent per month')</label>
    <input type="number" class="form-control" placeholder="Current Rent per month {{ $currency->name }}" name="rent_pm" value="{{ $advertisement->rent_pm }}" required>
</div>
<div class="form-group col-md-6">
    <label>@lang('Potential rent per month')</label>
    <input type="number" class="form-control" placeholder="Potential rent per month {{ $currency->name }}" value="{{ $advertisement->potential_rent }}" name="potential_rent" required>
</div>
<div class="head-ta w-100 mb-4">
    <h3>@lang('Cost Information')</h3>
</div>
<br>


@if($advertisement->subcategory_id == 5)

<div class="form-group col-md-6">
    <label>@lang('Rent Deposit Required')</label>
    <input type="number" class="form-control" placeholder="Rent Deposit {{ $currency->name }}" name="rent_deposit" required value="{{ $advertisement->rent_deposit }}">
</div>
<div class="form-group col-md-6">
    <label>@lang('Damage Deposit Required')</label>
    <input type="number" class="form-control" placeholder="Damage Deposit {{ $currency->name }}" name="damage_deposit" required value="{{ $advertisement->damage_deposit }}">
</div>
@endif

<div class="form-group col-md-6">
    <label>@lang('Agency/Sourcing Fee')</label>
    <input type="number" class="form-control" placeholder="Agency/Sourcing Fee {{ $currency->name }}" name="agency_fee" required value="{{ $advertisement->agency_fee }}">
</div>

<div class="head-ta w-100 mb-4">
    <h3>@lang('Property Photos')</h3>
</div>

{{-- upload image  --}}
@php

$photos = explode(',',$advertisement->photo);

@endphp
   <div class="upload__box">
    <div class="upload__btn-box">
        <h6>Drag a photo here, or click "Add Photos" to select your photos</h6>
      <label class="upload__btn">
       
        <p>Upload images</p>
        <input type="file" multiple="" data-max_length="20" class="upload__inputfile" name="photo[]">
      </label>
    </div>
    <div class="upload__img-wrap">
        @foreach ($photos as $photo)
        {{-- <div class="upload__img-box"><div style="background-image: url()" data-number="0" data-file="10189449581709378391.png" class="img-bg"><div class="upload__img-close"></div></div></div> --}}

        <div class="upload__img-box">
            <div style="background-image: url({{ asset('assets/images/advertisement/'.$photo) }})" data-number="0" data-file="{{ asset('assets/images/advertisement/'.$photo) }}" class="img-bg">
                <div class="upload__img-close"></div>
            </div>

        </div>
        @endforeach
    </div>
  </div>   
  
  {{-- Floor Plan Picture upload --}}

  <div class="form-group col-md-12">
    <label><b>@lang('Floor Plan Photo')</b></label>
    <input  type="file" class="form-control" placeholder="Agency/Sourcing Fee" name="floor_pic" >
</div>
   
    
        {{-- EPC Picture upload --}}