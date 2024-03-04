<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Verification extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'qualification',
        'criminal_record',
        'id_card',
        'id_image',
        'status',
        
    ];
}
