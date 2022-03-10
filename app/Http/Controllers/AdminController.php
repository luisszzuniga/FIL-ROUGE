<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Http\Requests\StoreAdminRequest;
use App\Http\Requests\UpdateAdminRequest;
use App\Models\Category;
use App\Models\Plate;
use App\Models\PlateSize;
use App\Models\User;
use Inertia\Inertia;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $plateSizes = PlateSize::all();
        $plates = Plate::with('plateSizes')->get();
        foreach ($plates as $plate) {
            $plate->img = $plate->getFirstMediaUrl();
            $plate->category = $plate->category->name;
        }

        $categories = Category::all();

        return Inertia::render('Admin/Index',[
            'plateSizes' => $plateSizes,
            'plates' => $plates,
            'categories' => $categories
        ]);
    }

    public function adminsIndex()
    {
        $adminsIds = Admin::all();
        $admins = [];
        foreach ($adminsIds as $adminId) {
            $admins[] = User::find($adminId->id);
        }

        return Inertia::render('Admin/Admins', [
            'admins' => $admins
        ]);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreAdminRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAdminRequest $request)
    {
        //
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Admin  $admin
     * @return \Illuminate\Http\Response
     */
    public function destroy(Admin $admin)
    {
        $admins = Admin::all();
        if ($admins->count() < 2) {
            return redirect(route('admin.admins.index'))->with([
                'error' => 'Vous ne pouvez pas supprimer le dernier administrateur du site.'
            ]);
        }
    }
}
