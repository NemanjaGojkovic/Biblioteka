<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookCollection;
use App\Models\Book;
use Illuminate\Http\Request;

class PublisherBookController extends Controller
{
    public function index($publisher_id)
    {
        $books=Book::get()->where('publisher_id', $publisher_id);
        if(is_null($books)){
            return response()->json('Nije pronadjen nijedna knjiga izabranog korisnika', 404);
        }
        return response()->json(new BookCollection($books));
    }
}
