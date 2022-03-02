<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Photo;
use Illuminate\Http\Request;
use App\Http\Requests\StorePhotoRequest;
use App\Http\Requests\UpdatePhotoRequest;

class PhotoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $photos = Photo::orderBy('position')->get();
        foreach ($photos as $photo) {
            $photo->img = $photo->getFirstMediaUrl();
        }

        return Inertia::render('Admin/Photos', [
            'photos' => $photos
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePhotoRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePhotoRequest $request)
    {
        $photo = Photo::create([
            'name' => $request->name
        ]);
        $photo->addMedia($request->image->getPathName())->toMediaCollection();
        
        return redirect()->route('admin.photos.index');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePhotoRequest  $request
     * @param  \App\Models\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePhotoRequest $request, Photo $photo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $id)
    {
        $photo = Photo::find($id);
        $photo->delete();

        return redirect()->route('admin.photos.index');
    }

    public function order(Request $request)
    {
        foreach ($request->photos as $key => $photo) {
            $photoModel = Photo::find($photo['id']);
            $photoModel->position = $key + 1;
            $photoModel->save();
        }
        
        return redirect()->route('admin.photos.index');
    }
}
