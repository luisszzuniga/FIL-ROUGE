<?php

namespace App\Http\Controllers;

use App\Models\Plate;
use App\Http\Requests\StorePlateRequest;
use App\Http\Requests\UpdatePlateRequest;
use App\Models\PlateSize;

class PlateController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StorePlateRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePlateRequest $request)
    {
        $plate = Plate::create([
            'name' => $request->name,
            'category_id' => $request->category,
            'description' => $request->description
        ]);

        $relations = $request->relations;
        $relations = explode(';', $relations);
        array_pop($relations);
        
        foreach ($relations as $relation) {
            $i = explode(':', $relation);
            $sizeId = PlateSize::where('name', $i[0])->first()->id;
            
            $plate->plateSizes()->attach($sizeId, ['price' => $i[1]]);
        }
        $plate->addMedia($request->image->getPathname())->toMediaCollection();
        return redirect(route('admin.index'));

        //RETRIEVE PRICE
        // $plate = Plate::with('plateSizes')->find(id);
        // dd($plate->plateSizes[0]->pivot->price);

        // $plate = Plate::with('plateSizes')->find(6);
        // foreach ($plate->plateSizes as $plateSize) {
        //     echo $plateSize->pivot->price . ' € </br>';
        // }

        // $size = PlateSize::with('plates')->find(12);
        // $size->plates()->detach();
        // $size->delete();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePlateRequest  $request
     * @param  \App\Models\Plate  $plate
     * @return \Illuminate\Http\Response
     */
    public function update(UpdatePlateRequest $request, int $plateId)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Plate  $plate
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $plateId)
    {
        $plate = Plate::find($plateId);
        $plate->delete();

        return redirect(route('admin.index'));
    }
}
