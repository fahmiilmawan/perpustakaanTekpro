<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Buku>
 */
class BukuFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

            return [

                'judul' => fake()->sentence(1),
                'tahun_terbit'=>fake()->year(),
                'stok'=>rand(1,10),
                'pengarang_id'=>rand(1,10),
                'penerbit_id'=>rand(1,10),
                'rak_id'=>1

            ];

    }
}
