<?php

namespace Database\Seeders;

use App\Models\TradeSubCategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TradeSubCategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       
        $subCategories = [
            ['name' => 'Coal', 'sap_code' => '001'],
            ['name' => 'Distribution', 'sap_code' => '002'],
            ['name' => 'DMPP', 'sap_code' => '003'],
            ['name' => 'Gas Engine', 'sap_code' => '004'],
            ['name' => 'Oil and Gas On & Offshore', 'sap_code' => '005'],
            ['name' => 'Nuclear', 'sap_code' => '007'],
            ['name' => 'Gas Turbine/Steam Turbine', 'sap_code' => '008'],
            ['name' => 'Franchised Car Dealer', 'sap_code' => '009'],
            ['name' => 'Franchised Motorcycle Dealer', 'sap_code' => '010'],
            ['name' => 'Recondition Car Dealer', 'sap_code' => '011'],
            ['name' => 'LCC/IIW', 'sap_code' => '012'],
            ['name' => 'Recondition Motorcycle Dealer', 'sap_code' => '013'],
            ['name' => 'Pharmaceuticals', 'sap_code' => '014'],
            ['name' => 'Plastic', 'sap_code' => '015'],
            ['name' => 'Cooling & Refrigeration', 'sap_code' => '016'],
            ['name' => 'Tire & Rubber Goods', 'sap_code' => '017'],
            ['name' => 'Motor/Vehicle Assembly', 'sap_code' => '018'],
            ['name' => 'Furniture', 'sap_code' => '019'],
            ['name' => 'Electronic', 'sap_code' => '020'],
            ['name' => 'Leather/Footwear', 'sap_code' => '021'],
            ['name' => 'Edible Oil', 'sap_code' => '022'],
            ['name' => 'Food & Beverage', 'sap_code' => '023'],
            ['name' => 'Sugar Mills', 'sap_code' => '024'],
            ['name' => 'Cargo', 'sap_code' => '025'],
            ['name' => 'Fishing Trawler', 'sap_code' => '026'],
            ['name' => 'Passenger/Ferry', 'sap_code' => '027'],
            ['name' => 'Ship Yards', 'sap_code' => '028'],
            ['name' => 'LNG/Carrier', 'sap_code' => '029'],
            ['name' => 'Dredging', 'sap_code' => '030'],
            ['name' => 'Tugs', 'sap_code' => '031'],
            ['name' => 'Distributors', 'sap_code' => '032'],
            ['name' => 'Local Export', 'sap_code' => '033'],
            ['name' => 'Tankers', 'sap_code' => '034'],
            ['name' => 'Bulk Carriers', 'sap_code' => '035'],
            ['name' => 'Container Ships', 'sap_code' => '036'],
            ['name' => 'Steel', 'sap_code' => '037'],
            ['name' => 'Non-ferrous', 'sap_code' => '038'],
            ['name' => 'Nepal Export', 'sap_code' => '039'],
            ['name' => 'Agriculture', 'sap_code' => '040'],
            ['name' => 'Construction', 'sap_code' => '041'],
            ['name' => 'Mining', 'sap_code' => '042'],
            ['name' => 'Railroads', 'sap_code' => '043'],
            ['name' => 'CAT-Alliance Partner', 'sap_code' => '044'],
            ['name' => 'Bus fleet', 'sap_code' => '045'],
            ['name' => 'Transport/Cargo', 'sap_code' => '046'],
            ['name' => 'Truck fleet', 'sap_code' => '047'],
            ['name' => 'Pulp & Paper', 'sap_code' => '048'],
            ['name' => 'Packaging Paper', 'sap_code' => '049'],
            ['name' => 'Wood Processing', 'sap_code' => '050'],
            ['name' => 'Cement', 'sap_code' => '051'],
            ['name' => 'Ceramics', 'sap_code' => '052'],
            ['name' => 'Chemical', 'sap_code' => '053'],
            ['name' => 'Composites', 'sap_code' => '054'],
            ['name' => 'Dyeing', 'sap_code' => '055'],
            ['name' => 'Fabrics', 'sap_code' => '056'],
            ['name' => 'Garments', 'sap_code' => '057'],
            ['name' => 'Jute', 'sap_code' => '058'],
            ['name' => 'Spinning', 'sap_code' => '059'],
            ['name' => 'Tannery', 'sap_code' => '060'],
            ['name' => 'Fertilizer', 'sap_code' => '066'],
            ['name' => 'FS/CNG Station', 'sap_code' => '061'],
            ['name' => 'Wholesaler', 'sap_code' => '062'],
            ['name' => 'Retailer', 'sap_code' => '063'],
            ['name' => 'E-Commerce', 'sap_code' => '064'],
            ['name' => 'Auto Parts', 'sap_code' => '065'],
            ['name' => 'Others', 'sap_code' => '006'],
        ];
        
        foreach($subCategories as $cate){
            TradeSubCategory::create([
                'name' => $cate['name'],
                'sap_code' => $cate['sap_code']
            ]);
        }

    }
}
