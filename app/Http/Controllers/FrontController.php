<?php

namespace App\Http\Controllers;

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
}