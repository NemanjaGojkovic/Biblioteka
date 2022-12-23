<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookCollection;
use App\Models\Book;
use Illuminate\Http\Request;

class CategoryBookController extends Controller
{
    public function index($category_id)
    {
        $books=Book::get()->where('category_id', $category_id);
        if(is_null($books)){
            return response()->json('Nije pronadjen nijedna knjiga izabranog korisnika', 404);
        }
        return response()->json(new BookCollection($books));
    }
}
