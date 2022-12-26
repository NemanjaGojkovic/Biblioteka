<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use PHPUnit\Framework\Constraint\Count;

class Author extends Model
{
    use HasFactory;

    protected $guarded=[];

    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function books()
    {
        return $this->hasMany(Book::class);
    }

}
