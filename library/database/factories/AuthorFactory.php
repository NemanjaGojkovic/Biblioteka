<?php

namespace Database\Factories;

use App\Models\Country;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\author>
 */
class AuthorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'firstname'=>$this->faker->firstName(),
            'lastname'=>$this->faker->firstName(),
            'birthday'=>$this->faker->date(),
            'gender'=>$this->faker->randomElement(['muski, zenski']),
            'country_id'=>Country::factory()
        ];
    }
}
