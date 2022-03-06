<?php

namespace App\Http\Requests;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Http\FormRequest;

class StoreCategoryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return Gate::allows('admin', auth()->user()->id);
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|max:70|unique:categories'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Le nom est requis!',
            'name.max' => 'Le nom ne doit pas dépasser les 70 charactères!',
            'name.unique' => 'Ce nom existe déjà'
        ];
    }
}
