<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookCollection;
use App\Http\Resources\BookResource;
use App\Models\Book;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books=Book::all();
        return new BookCollection($books);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator=Validator::make($request->all(),[
            'title'=>'required|string|max:255',
            'description'=>'required|string||max:255',
            'publish_year'=>'required|digits:4|integer|min:1000|max:'.(date('Y')+1),
            'category_id'=>'required',
            'author_id'=>'required',
            'publisher_id'=>'required'
        ]);
        
        if($validator->fails()){
            return response()->json($validator->errors());
        }

        $book=Book::create([
            'title'=>$request->title,
            'description'=>$request->description,
            'publish_year'=>$request->publish_year,
            'category_id'=>$request->category_id,
            'author_id'=>$request->author_id,
            'user_id'=>Auth::user()->id,          
            'publisher_id'=>$request->publisher_id,          
        ]);

        return response()->json(['Knjiga uspesno kreirana', new BookResource($book)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function show(Book $book)
    {
        return new BookResource($book);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function edit(Book $book)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Book $book)
    {
        $validator=Validator::make($request->all(),[
            'title'=>'required|string|max:255',
            'description'=>'required|string|max:255',
            'publish_year'=>'required|digits:4|integer|min:1000|max:'.(date('Y')+1),
            'category_id'=>'required',
            'author_id'=>'required',
            'publisher_id'=>'required'
        ]);
        
        if($validator->fails()){
            return response()->json($validator->errors());
        }

        $book->title=$request->title;
        $book->description=$request->description;
        $book->publish_year=$request->publish_year;
        $book->category_id=$request->category_id;
        $book->author_id=$request->author_id;
        $book->publisher_id=$request->publisher_id;

        
        $book->save();

        return response()->json(['Knjiga uspesno izmenjena', new BookResource($book)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Book  $book
     * @return \Illuminate\Http\Response
     */
    public function destroy(Book $book)
    {
        $book->delete();
        return response()->json(['Knjiga uspesno izbrisana', new BookResource($book)]);

    }
}
