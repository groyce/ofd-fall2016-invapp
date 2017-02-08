<?php

use Illuminate\Database\Seeder;

class StationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $items = [

            ['id' => 1, 'station_name' => 'Station HQ', 'station_number' => 1, 'station_date' => '1877-01-09', 'address' => 'Jackson 1', 'city' => 'Omaha', 'zipcode' => 68101, 'district' => 'Douglas', ],
            ['id' => 2, 'station_name' => 'Training', 'station_number' => 0, 'station_date' => '1995-07-08', 'address' => 'Dodge 112', 'city' => 'Omaha', 'zipcode' => 69101, 'district' => 'Westside', ],
        ];

        foreach ($items as $item) {
            \App\Station::create($item);
        }
    }
}
