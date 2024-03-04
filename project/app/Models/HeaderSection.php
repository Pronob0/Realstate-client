<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HeaderSection extends Model
{
    use HasFactory;
    protected $fillable = [
        'room_title',
        'room_subtitle',
        'distress_title',
        'distress_subtitle',
        'buyer_title',
        'buyer_subtitle',
        'blog_title',
        'blog_subtitle',
        'subscribe_title',
        'subscribe_subtitle',
    ];

    public $timestamps = false;
}
