<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePlateRequest extends FormRequest
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
            'name' => 'string|min:3|max:70',
            'description' => '',
            'image' => 'image|max:8192',
            'category' => 'numeric|exists:categories,id'
        ];
    }

    public function messages()
    {
        return [
            'name.min' => 'Le nom du plat ne doit pas être inférieur à 3 charactères!',
            'name.max' => 'Le nom du plat ne doit pas être supérieur à 70 charactères!',
            'category.exists' => 'Catégorie non-existante!',
            'image.image' => 'Le fichier déposé n\'est pas une image!',
            'image.max' => 'L\'image ne doit pas dépasser les 8 mo!'
        ];
    }
}
