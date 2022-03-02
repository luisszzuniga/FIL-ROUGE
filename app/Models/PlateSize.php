<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlateSize extends Model
{
    use HasFactory;

    protected $fillable = ['name'];

    public function plates()
    {
        return $this->belongsToMany(Plate::class);
    }
}
