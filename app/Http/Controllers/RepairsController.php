<?php

namespace App\Http\Controllers;

use App\Repair;
use App\Vehicle;
use App\AllAsset;
use App\Status;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;


class RepairsController extends Controller
{

    /**
     * Display a listing of Repair.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $assets = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $vehicles = Vehicle::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('vehicles.*')
            ->where('status', '=', 'in-repair')
            ->get();


        $relation = $assets ->merge($vehicles);;

        return view('repairs.index', compact('relation','vehicles','assets','asset_repair') );
    }


}
