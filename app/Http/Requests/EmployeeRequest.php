<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EmployeeRequest extends FormRequest
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
            'firstname'     => 'required|string|max:20',
            'lastname'      => 'required|string|max:20',
            'prefix_name'   => 'required|string|max:10',
            'department'    => 'integer|digits_between:1,30',
            'employee_nr'   => 'required|integer|digits_between:1,20',
            'branche'       => 'string|max:20',
            'titles'        => 'string|max:10',
            'salary_scale'  => 'integer|between:1,9',
            'allowance'     => 'required|integer|between:0,99|digits_between:1,2',
            'salary'        => 'required|integer|between:0,99999|digits_between:1,5',
            'function'      => 'string|max:20',
            'employee_since' => 'required|date|before:2020-01-01',
            'birthday'      => 'date|before:2001-01-01',
            'address'      => 'string|max:35',
            'homenr'        => 'required|string|alpha_num|max:5',
            'zip'          => 'required|string|alpha_num|max:20',
            'city'         => 'required|string|max:35',
            'province'      => 'string|max:4,'
        ];
    }
}
