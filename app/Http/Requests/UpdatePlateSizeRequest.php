<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class UpdatePlateSizeRequest extends FormRequest
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
            'name' => [
                'required',
                'max:70',
                Rule::unique('plate_sizes')->ignore($this->id)
            ]
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Veuillez saisir un nom.',
            'name.max' => 'Le nom ne peut pas faire plus de 70 charactères.',
            'name.unique' => 'Le nom que vous avez choisi existe déjà.'
        ];
    }
}
