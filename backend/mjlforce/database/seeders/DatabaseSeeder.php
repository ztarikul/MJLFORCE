<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // $this->call(LocationSeeder::class);
        // $this->call(DesignationSeeder::class);
        // $this->call(CustomerGroupSeeder::class);
        // $this->call(DistributionChannelSeeder::class);
        // $this->call(RegionSeeder::class);
        // $this->call(TerritoriesSeeder::class);
        // $this->call(TradeCaegoriesSeeder::class);
        // $this->call(TradeSubCategoriesSeeder::class);
        $this->call(SoldToPartySeeder::class);
    }
}
