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

    // property id  
    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }

    public function property(){
        return $this->belongsTo(Advertisement::class,'property_id','id');
        
    }
   
}
