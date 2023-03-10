<?php

namespace Database\Factories;

use App\Models\Author;
use App\Models\Category;
use App\Models\Publisher;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Book>
 */
class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title'=>$this->faker->title(),
            'description'=>$this->faker->sentence(),
            'publish_year'=>$this->faker->year(),
            'category_id'=>Category::factory(),
            'author_id'=>Author::factory(),
            'publisher_id'=>Publisher::factory(),
            'user_id'=>User::factory()
        ];
    }
}
