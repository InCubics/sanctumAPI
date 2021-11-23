<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Beer extends Model
{
    use HasFactory;

    protected $fillable=['name', 'brewer', 'type', 'yeast', 'amount', 'price'];

//    public $relatedModels   = ['orders'];               // required to add relational-data to response (create a collection)
    public $pivotFields     = ['amount','price'];       // specific keys required to fill fields in pivot-table

    ///// ORDER /////
    public function orders()
    {
        return $this->belongsToMany('\App\Models\Order', 'order_beer', 'beer_id', 'order_id')
            ->withPivot('amount', 'price');//->withTimestamps();
        //  ->withPivot('order_id, beer_id, amount','price');//->withTimestamps();
    }

    public function scopeBeerPopular($query)
    {
        return $query->where('perc', '>', "0.03")
            ->inRandomOrder(); //->orderBy('perc'); //->where('purchase_price','<=', 2.5);
    }
}
