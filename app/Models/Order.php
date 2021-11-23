<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'employee_id',
        'deleted_at',
        'amount',
        'price'
    ];

    public $pivotFields     = ['amount','price'];              // specific keys required to fill fields in pivot-table

    //// CUSTOMER ////
    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customer_id', 'id');
    }

    //// EMPLOYEE ////
    public function employee()
    {
        return $this->belongsTo(Employee::class, 'employee_id', 'id');
    }

    ////  BEER
    public function beers(){
        return $this->belongsToMany('\App\Models\Beer', 'order_beer', 'order_id', 'beer_id')
            ->withPivot('amount','price');//->withTimestamps();
    }
}
