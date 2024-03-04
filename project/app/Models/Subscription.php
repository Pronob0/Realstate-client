<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subscription extends Model
{
    use HasFactory;

    protected $fillable = [
        'transaction_no',
        'charge_id',
        'txnid',
        'user_id',
        'plan_id',
        'method',
        'currency_id',
        'amount',
        'notify_id',
        'payment_status',
        'status',
        'price',

    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function plan()
    {
        return $this->belongsTo(Plan::class)->withDefault();
    }

    public function currency()
    {
        return $this->belongsTo(Currency::class)->withDefault();
    }


}
