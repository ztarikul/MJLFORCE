<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Material;
use App\Models\Promotion;
use App\Models\PromotionItems;
use Illuminate\Http\Request;

class PromotionController extends Controller
{
    //

    public function promotions_index(){
        $promotions = Promotion::orderBy('created_at', 'desc')->get();
        return view('promotions.index', compact('promotions'));
    }

    public function store_promotion(Request $request){

        $promotion = new Promotion();
        $promotion->title = $request->title;
        $promotion->sap_code = $request->sap_code;
        $promotion->description = $request->description;
        $promotion->start_from = $request->start_from;
        $promotion->type = $request->type;
        $promotion->end_to = $request->end_to;
        $promotion->created_by = auth()->user()->id;
        $promotion->hostname = request()->ip();
        $promotion->save();

        return response()->json([
            'status' => 'success',
            'message' => 'Promotion created successfully',
              'redirect_url' => route('offer_and_discount.promotions')
        ], 200);
    }

    public function edit_promotion($id){

        $promotion = Promotion::find($id);
        return response()->json([
            'status' => 'success',
            'promotion' => $promotion,
        ], 200);

    }

    public function update_promotion(Request $request, $id){

        $promotion = Promotion::find($id);
        $promotion->title = $request->title;
        $promotion->sap_code = $request->sap_code;
        $promotion->description = $request->description;
        $promotion->start_from = $request->start_from;
        $promotion->type = $request->type;
        $promotion->end_to = $request->end_to;
        $promotion->hostname = request()->ip();
        $promotion->update();

        return response()->json([
            'status' => 'success',
            'message' => 'Promotion updated successfully',
            'redirect_url' => route('offer_and_discount.promotions')
        ], 200);
    }   


    public function delete_promotion($id){
        $promotion = Promotion::find($id)->delete();
        return response()->json([
            'status' => 'success',
            'message' => 'Promotion deleted successfully',
            'redirect_url' => route('offer_and_discount.promotions')
        ], 200);
    }

    public function promotional_items($id){
        $promotion = Promotion::find($id);
        $promotionalItems = $promotion->items()->get();
        return view('promotions.promotionalItems', compact('promotion','promotionalItems'));
    }

    public function create_promotional_items($promotion_id){
        $promotion = Promotion::where('activeStatus', true)->find($promotion_id);
        $materials = Material::orderBy('name', 'asc')->where('activeStatus', true)->get();

        return response()->json([
            'status' => 'success',
            'promotion' => $promotion,
            'materials' => $materials,
        ], 200);
    }

    public function store_promotional_items(Request $request){

        $item = new PromotionItems();
        $item->promotion_id = $request->promotion_id;
        $item->material_id = $request->material_id;
        $item->material_name = Material::find($request->material_id)->name;
        $item->offer_qnty = $request->offer_qnty;
        $item->promo_material_name = $request->promo_material_name;
        $item->promo_qnty = $request->promo_qnty;
        $item->description = $request->description;
        $item->created_by = auth()->user()->id;
        $item->hostname = request()->ip();
        $item->save();  

        return response()->json([
            'status' => 'success',
            'message' => 'Product added to Promotion successfully',
              'redirect_url' => route('offer_and_discount.promotionalItems', $request->promotion_id)
        ], 200);
    }

    public function delete_promotional_items($id){
        $item = PromotionItems::find($id);
        $promotion_id = $item->promotion->id;
        $item->delete();
        return response()->json([
            'status' => 'success',
            'message' => 'Product removed from Promotion successfully',
            'redirect_url' => route('offer_and_discount.promotionalItems', $promotion_id)
        ], 200);
    }

}
