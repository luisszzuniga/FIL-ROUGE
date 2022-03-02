<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;

class Plate extends Model implements HasMedia
{
    use HasFactory;
    use InteractsWithMedia;

    protected $fillable = ['name', 'description', 'category_id'];

    public function plateSizes()
    {
        return $this->belongsToMany(PlateSize::class)->withPivot('price');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
