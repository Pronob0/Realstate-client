<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Advertisement extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'user_id',
        'category_id',
        'subcategory_id',
        'location',
        'postcode',
        'title',
        'buyer_type',
        'budget',
        'is_image',
        'description',
        'amenities',
        'property_type',
        'plot_usage',
        'plot_size',
        'bedroom',
        'bathroom',
        'reception',
        'require',
        'strategy',
        'region',
        'street',
        'furnished',
        'train_station',
        'hmo',
        'cost',
        'photo',
        'floor_pic',
        'buying_for',
        'occupancy',
        'condition',
        'market_valuation',
        'gross',
        'sale',
        'type',
        'is_buddy_up',
        'is_tenancy',
        'tenant_details',
        'features',
        'tenance',
        'room_sizes',
        'period_accomodation',
        'accomodation_for',
        'move_from',
        'about_you',
        'about_flatmte',
        
        

    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function subcategory()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function usercontacts()
    {
        return $this->hasMany(UserContact::class,'property_id','id');
    }

}
