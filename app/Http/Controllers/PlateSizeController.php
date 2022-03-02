<?php

namespace App\Http\Controllers;

use App\Models\PlateSize;
use App\Http\Requests\StorePlateSizeRequest;
use App\Http\Requests\UpdatePlateSizeRequest;

class PlateSizeController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePlateSizeRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePlateSizeRequest $request)
    {
        $plateSize = PlateSize::create([
            'name' => $request->name
        ]);

        return redirect(route('admin.index'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePlateSizeRequest  $request
     * @param  \App\Models\PlateSize  $plateSize
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePlateSizeRequest $request, int $plateSizeId)
    {
        $plateSize = PlateSize::find($plateSizeId);
        $plateSize->name = $request->name;
        $plateSize->save();

        return redirect(route('admin.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\PlateSize  $plateSize
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $plateSizeId)
    {
        $plateSize = PlateSize::find($plateSizeId);
        $plateSize->delete();
        
        return redirect(route('admin.index'));
    }
}
