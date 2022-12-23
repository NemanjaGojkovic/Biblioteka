<?php

namespace App\Http\Controllers;

use App\Http\Resources\AuthorCollection;
use App\Models\Author;
use Illuminate\Http\Request;

class CountryAuthorController extends Controller
{
    public function index($country_id)
    {
        $authors=Author::get()->where('country_id', $country_id);
        if(is_null($authors)){
            return response()->json('Nije pronadjen nijedan autor iz izabrane zemlje', 404);
        }
        return response()->json(new AuthorCollection($authors));
    }
}
