<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Location;
use App\Models\Photo;
use App\Models\Plate;
use Illuminate\Http\Request;
use Inertia\Inertia;

class FrontController extends Controller
{
    public function index()
    {
        $plates = Plate::paginate(6);
        foreach ($plates as $plate) {
            $plate->img = $plate->getFirstMediaUrl();
        }
        return Inertia::render('Index', [
            "plates" => $plates
        ]);
    }

    public function menu()
    {
        $categories = Category::all();
        foreach ($categories as $category) {
            $category->plates;
            foreach ($category->plates as $plate) {
                $plate->plateSizes;
                $plate->img = $plate->getFirstMediaUrl();
            }
        }
        return Inertia::render('Menu', [
            "categories" => $categories
        ]);
    }

    public function photos()
    {
        $photos = Photo::orderBy('position')->get();
        foreach ($photos as $photo) {
            $photo->img = $photo->getFirstMediaUrl();
        }
        return Inertia::render('Photos', [
            "photos" => $photos
        ]);
    }

    public function find()
    {
        $locations = Location::orderBy('id')->get();

        return Inertia::render('Find', [
            "locations" => $locations
        ]);
    }

    public function contact()
    {
        return Inertia::render('Contact');
    }
}