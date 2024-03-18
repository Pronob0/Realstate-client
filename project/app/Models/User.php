<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'username',
        'email',
        'photo',
        'phone',
        'country',
        'city',
        'email_verified',
        'verification_link',
        'address',
        'status',
        'zip',
        'password',
        'owner_id',
        'force_login',
        'is_verify'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];



    public function users()
    {
        return $this->hasMany(User::class,'owner_id','id')->orderby('id','DESC');
    }

    public function categories()
    {
        return $this->hasMany(Category::class,'user_id','id')->orderby('id','DESC');
    }

    public function brands()
    {
        return $this->hasMany(Brand::class,'user_id','id')->orderby('id','DESC');
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }

    public function services()
    {
        return $this->hasMany(Service::class,'user_id','id')->orderby('id','DESC');
    }

    public function IsUserDemo(){
        if ($this->id == 22) {
            return true;
        }
        return false;
    }
    
   
}
