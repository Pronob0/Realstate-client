<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserContact extends Model
{
    use HasFactory;


    public function conversations(){
        return $this->hasMany(UserOwnerConversation::class,'contact_id','id');
    }

   
}
