<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserOwnerConversation extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'owner_id',
        'message',
        'status',
    ];


    public function ownerContact()
    {
        return $this->belongsTo(UserContact::class);
    }

}
