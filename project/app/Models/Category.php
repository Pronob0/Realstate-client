<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'slug',
        'photo',
    ];
    
    public $timestamps = false;

   public function subcategories()
    {
        return $this->hasMany(SubCategory::class);
    }

    public function advertisements()
    {
        return $this->hasMany(Advertisement::class);
    }
}
