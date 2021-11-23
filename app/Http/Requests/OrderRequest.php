<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use http\Env\Request;

class OrderRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        if(request()->getMethod() == 'PUT') // when updating not all fields are required, only changes
        {
            return [
                'order_id'=>'integer',
                'beer_id'=>'integer',
                'amount'=>'integer',
                'price'=>'regex:/^[0-9]+(\.[0-9]{2})/'
            ];
        }

        return [
            'order_id'=>'integer|required',
            'beer_id'=>'integer|required',
            'amount'=>'integer|required',
            'price'=>'regex:/^[0-9]+(\.[0-9]{2})/|required',
        ];

    }
}
