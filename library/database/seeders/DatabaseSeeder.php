<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Author;
use App\Models\Book;
use App\Models\Category;
use App\Models\Country;
use App\Models\Publisher;
use Illuminate\Database\Seeder;
use App\Models\User;
use SebastianBergmann\LinesOfCode\Counter;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::truncate();
        Category::truncate();
        Country::truncate();
        Author::truncate();
        Book::truncate();
        Publisher::truncate();

        Book::factory(5)->create();

        // $user=User::factory()->create();

        // $cat1=Category::create([
        //     'name'=>"Filozofija"
        // ]);

        // $cat2=Category::create([
        //     'name'=>"Klasicna knjizevnost"
        // ]);

        // $cou1=Country::create([
        //     'name'=>"Francuska"
        // ]);

        // $cou2=Country::create([
        //     'name'=>"Rusija"
        // ]);

        // $cou3=Country::create([
        //     'name'=>"Ceska"
        // ]);

        // $pub1=Publisher::create([
        //     'name'=>"Laguna"
        // ]);
        
        // $pub2=Publisher::create([
        //     'name'=>"Kontrast"
        // ]);

        // $aut1=Author::create([
        //     'firstname'=>"Franc",
        //     'lastname'=>"Kafka",
        //     'birthday'=>"1883/06/03",
        //     'gender'=>"Muski",
        //     'country_id'=>$cou3->id
        // ]);

        // $aut2=Author::create([
        //     'firstname'=>"Alber",
        //     'lastname'=>"Kami",
        //     'birthday'=>"1913/11/07",
        //     'gender'=>"Muski",
        //     'country_id'=>$cou1->id
        // ]);

        // $aut3=Author::create([
        //     'firstname'=>"Fjodor",
        //     'lastname'=>"Dostojevski",
        //     'birthday'=>"1821/11/11",
        //     'gender'=>"Muski",
        //     'country_id'=>$cou2->id
        // ]);

        // $b1=Book::create([
        //     'title'=>"Braca Karamazovi",
        //     'description'=>"Prica o tri brata i odnosima u njihovoj porodici",
        //     'publish_year'=>"1880",
        //     'category_id'=>$cat2->id,
        //     'author_id'=>$aut3->id,
        //     'publisher_id'=>$pub2->id,
        //     'user_id'=>$user->id
        // ]);

        // $b1=Book::create([
        //     'title'=>"Pobunjen covek",
        //     'description'=>"Filozofska rasprava o kontrolisanju ljudi",
        //     'publish_year'=>"1951",
        //     'category_id'=>$cat1->id,
        //     'author_id'=>$aut2->id,
        //     'publisher_id'=>$pub2->id,
        //     'user_id'=>$user->id
        // ]);

        // $b1=Book::create([
        //     'title'=>"Proces",
        //     'description'=>"Prica o coveku koji je optuzen za krivicno delo, ali mu se ne otkriva sta je u pitanju",
        //     'publish_year'=>"1926",
        //     'category_id'=>$cat2->id,
        //     'author_id'=>$aut1->id,
        //     'publisher_id'=>$pub1->id,
        //     'user_id'=>$user->id
        // ]);

        // $b1=Book::create([
        //     'title'=>"Zamak",
        //     'description'=>"Prica o geometru koji posecuje selo kako bi odradio posao i nailazi na probleme sa vlastima",
        //     'publish_year'=>"1927",
        //     'category_id'=>$cat2->id,
        //     'author_id'=>$aut1->id,
        //     'publisher_id'=>$pub1->id,
        //     'user_id'=>$user->id
        // ]);



    }
}
