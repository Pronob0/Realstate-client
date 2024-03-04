<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceCategory extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'name',
        'slug',
        'status'
    ];

    public function services()
    {
        return $this->hasMany(Service::class, 'category_id', 'id');
    }
}
