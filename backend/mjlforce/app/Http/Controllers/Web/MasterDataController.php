<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\BusinessTeam;
use App\Models\CustomerGroup;
use App\Models\DistributionCh;
use App\Models\Region;
use App\Models\Territory;
use App\Models\TradeSubCategory;
use Illuminate\Http\Request;

class MasterDataController extends Controller
{
    //

    public function customerGroupIndex(){
        $customerGroups = CustomerGroup::orderBy('name', 'asc')->get();
        return view('masterData.customerGroup.index', compact('customerGroups'));
    }
    public function businessTeamIndex(){
        $businessTeams = BusinessTeam::orderBy('name', 'asc')->get();
        return view('masterData.businessTeam.index', compact('businessTeams'));
    }
    public function regionsIndex(){
        $regions = Region::orderBy('name', 'asc')->get();
        return view('masterData.regions.index', compact('regions'));
    }
    public function distributionChannelIndex(){
        $distributionChes = DistributionCh::orderBy('name', 'asc')->get();
        return view('masterData.distributionChannels.index', compact('distributionChes'));
    }
    public function territoryIndex(){
        $territories = Territory::orderBy('name', 'asc')->get();
        return view('masterData.territories.index', compact('territories'));
    }
    public function tradeCategoryIndex(){
        $tradeSubCategories = TradeSubCategory::orderBy('trade_category_id', 'asc')->get();
        return view('masterData.tradeCategories.index', compact('tradeSubCategories'));
    }
}
