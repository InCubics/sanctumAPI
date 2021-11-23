<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Order;
use App\Models\User;

class Employee extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'firstname', 'lastname', 'prefix_name', 'titles',
        'department',  'employee_nr', 'branche',
        'salary_scale', 'allowance', 'salary', 'function',
        'employee_since', 'birthday',
        'address', 'homenr', 'zip', 'city', 'province',
        'deleted_at'
    ];

    protected $hidden = [
        'birthday',
        'employee_since',
        'salary',
        'salary_scale'
    ];

    public $relatedModels   = ['orders','user'];              // required to add relational-data to response (create a collection)
    public $pivotFields     = ['amount','price'];             // specific keeys required to fill fields in pivot-table

    public function orders()
    {
        return $this->hasMany(Order::class, 'employee_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'id', 'id');
    }

}
