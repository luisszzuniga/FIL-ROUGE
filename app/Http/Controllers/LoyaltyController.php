<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Inertia\Inertia;

class LoyaltyController extends Controller
{
    public function index()
    {
        $users = User::limit(20)->get();

        return Inertia::render('Admin/Loyalty', [
            'users' => $users
        ]);
    }

    public function search(string $search)
    {
        $users = User::all();
        $users = $users->filter(function ($value) use ($search) {
            return str_contains($value, $search);
        });

        return Inertia::render('Admin/Loyalty', [
            'users' => $users
        ]);
    }

    public function change(Request $request, int $id)
    {
        $user = User::find($id);
        $user->loyalty_points += intval($request->changer);
        if (intval($user->loyalty_points) < 0) {
            $user->loyalty_points = 0;
        }
        $user->save();

        return redirect()->route('admin.loyalty.index');
    }
}
