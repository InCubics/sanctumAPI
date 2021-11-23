<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'barname', 'address', 'homenr', 'zip', 'city', 'country', 'phone',
        'price_reduction', 'bankcard',
        'deleted_at'
    ];

    public $relatedModels   = ['orders','user'];  // required to add relational-data to response (create a collection)

    protected $hidden = [
        'bankcard',
    ];

    public function orders()
    {
        return $this->hasMany(Order::class, 'customer_id', 'id');
    }

    public function latestOrder()
    {   // get last order of a customer
        return $this->belongsTo(Order::class, 'customer_id', 'id')->latestOfMany();
    }

    public function oldestOrder()
    {   // get oldes order of a customer
        return $this->belongsTo(Order::class, 'customer_id', 'id')->oldestOfMany();
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'id', 'id');
    }
}
