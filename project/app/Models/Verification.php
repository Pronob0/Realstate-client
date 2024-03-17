<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Verification extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'user_id',
        'qualification',
        'criminal_record',
        'id_card',
        'id_image',
        'status',
        
    ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
