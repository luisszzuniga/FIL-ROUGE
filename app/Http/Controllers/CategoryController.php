<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;

class CategoryController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreCategoryRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCategoryRequest $request)
    {
        Category::create([
            'name' => $request->name
        ]);

        return redirect(route('admin.index'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateCategoryRequest  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCategoryRequest $request, int $categoryId)
    {
        $category = Category::find($categoryId);
        $category->name = $request->name;
        $category->save();

        return redirect(route('admin.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $categoryId
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $categoryId)
    {
        $category = Category::find($categoryId);

        foreach ($category->plates as $plate) {
            $plate->delete();
        }

        $category->delete();
        
        return redirect(route('admin.index'));
    }
}
