<?php

namespace App\Http\Requests;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Http\FormRequest;

class StorePhotoRequest extends FormRequest
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
            'name' => 'string|max:250',
            'image' => 'image|max:8192'
        ];
    }

    public function messages()
    {
        return [
            'name.max' => 'Le nom doit être inférieur à 250 charactères.',
            'image.image' => 'Le fichier doit être une image!',
            'image.max' => 'Le fichier doit faire moins de 8 MB!'
        ];
    }
}
