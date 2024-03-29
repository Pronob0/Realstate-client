<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SeoSetting extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable=[
        'title',
        'meta_tag',
        'meta_description',
        'meta_image',
        'google_analytics',
        'facebook_pixel'
    ];

   
}
