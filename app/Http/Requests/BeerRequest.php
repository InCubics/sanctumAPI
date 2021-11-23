<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BeerRequest extends FormRequest
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
            'name'          =>'required|string|max:40',
            'brewer'        =>'required|string|max:40',
            'type'          =>'required|string|max:40',
            'yeast'         =>'string|max:40',
            'perc'          =>'regex:/^[0-9]+(\.[0-9]{2})/|max:8',
            'purchase_price'=>'required|regex:/^[0-9]+(\.[0-9]{2})?/|max:11',
        ];
    }
}
