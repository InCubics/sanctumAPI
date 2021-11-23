<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CustomerRequest extends FormRequest
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
        return [
            'id'            =>  'integer',
            'barname'       => 'required|string|max:40',
            'address'       => 'required|string|max:20',
            'address'       => 'required|string|max:35',
            'homenr'        => 'required|string|alpha_num|max:8',
            'zip'           => 'required|string|alpha_num|max:20',
            'city'          => 'required|string|max:35',
            'country'       => 'required|string|max:20',
            'phone'         => 'required|string|alpha_dash|max:20',
            'price_reduction'=>'regex:/^[0-9]+(\.[0-9]{2})/|digits_between:3,8',
            'bankcard'      => 'required|integer|between:9999999,9999999999999'
        ];
    }
}
