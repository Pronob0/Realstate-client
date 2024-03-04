<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;
     
    protected $fillable = [
        'name',
        'slug',
        'category_id',
        'attributes',
        'bedroom',
        'bathrooms',
        'receptions',
        'required',
        'is_bedrooms',
        'is_bathrooms',
        'is_receptions',
        'is_required',


    ];
    public $timestamps = false;

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function advertisements()
    {
        return $this->hasMany(Advertisement::class);
    }
}
