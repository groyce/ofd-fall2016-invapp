<?php

namespace App\Http\Controllers;

use App\Vehicle;
use App\Vehiclehis;
use App\UnitType;
use App\AllAsset;
use App\Station;
use App\Grant;
use App\Status;
use App\Vendor;
use Illuminate\Http\Request;
use App\Http\Requests\StoreVehiclesRequest;
use App\Http\Requests\UpdateVehiclesRequest;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use App\Http\Controllers\Traits\FileUploadTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;

class VehiclesController extends Controller
{
    use FileUploadTrait;

    /**
     * Display a listing of Vehicle.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $vehicles = Vehicle::all();
//        $books = App\Book::with('author', 'publisher')->get();
//        $vehicles = Vehicle::with('all', 'grants')->get();
//        $contacts = Contact::with('organizations')->withPivot('contractstatus')->get();
//        dd($vehicles);

        return view('vehicles.index', compact('vehicles'));
    }

    /**
     * Show the form for creating new Vehicle.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $relations = [
            'unittypes' => \App\UnitType::get()->pluck('name', 'id')->prepend('Please select', ''),
            'grants' => \App\Grant::get()->pluck('grant_name', 'id'),
            'statuses' => \App\Status::get()->pluck('status', 'id')->prepend('Please select', ''),
            'stations' => \App\Station::get()->pluck('station_name', 'id')->prepend('Please select', ''),
            'vendors' => \App\Vendor::get()->pluck('vendor_name', 'id')->prepend('Please select', ''),
        ];

        
        return view('vehicles.create', compact('') + $relations);
    }

    /**
     * Store a newly created Vehicle in storage.
     *
     * @param  \App\Http\Requests\StoreVehiclesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreVehiclesRequest $request)
    {
//        Vehicle::create($request->all());
        $request = $this->saveFiles($request);
        $vehicles = new Vehicle([
            'vehicle_number'=> $request->vehicle_number,
            'van'=> $request->van,
            'make'=> $request->make,
            'model'=> $request->model,
            'year'=> $request->year,
            'vehicle_note'=> $request->vehicle_note,
            'vehicle_document'=> $request->vehicle_document,
            'vehicle_image'=> $request->vehicle_image,

            'unittype_id'=> $request->unittype_id,
            'status_id'=> $request->status_id,
            'grant_id'=> $request->grant_id,
            'station_id'=> $request->station_id,
            'vendor_id'=> $request->vendor_id,
        ]);
        $vehicles->save();
        $vehicles->grants()->detach();
        $vehicles->grants()->attach($request["grant_id"]);
        return redirect()->route('vehicles.index');
    }

    /**
     * Show the form for editing Vehicle.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $relations = [
            'grants' => \App\Grant::get()->pluck('grant_name', 'id'),
            'grantsSet' => DB::table('asset_grant')
                ->leftJoin('grants', 'grant_id', '=', 'grants.id')
                ->where('vehicle_id',$id)->pluck('grant_id')->toArray(),
            'statuses' => \App\Status::get()->pluck('status', 'id')->prepend('Please select', ''),
            'stations' => \App\Station::get()->pluck('station_number', 'id')->prepend('Please select', ''),
            'unittypes' => \App\UnitType::get()->pluck('name', 'id')->prepend('Please select', ''),
            'vendors' => \App\Vendor::get()->pluck('vendor_name', 'id')->prepend('Please select', ''),

        ];

        
        $vehicle = Vehicle::findOrFail($id);
        return view('vehicles.edit', compact('vehicle', '') + $relations);
    }

    /**
     * Update Vehicle in storage.
     *
     * @param  \App\Http\Requests\UpdateVehiclesRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateVehiclesRequest $request, $id)
    {

//        dd($request);
        $request = $this->saveFiles($request);

        $vehicle = Vehicle::findOrFail($id);

//        start history code
//        storing all foreing key id s in variables

       $stationid=$vehicle->station_id;
       $statusid=$vehicle->status_id;
//     $grantid=$vehicle->grant_id;
       $unittypeid=$vehicle->unittype_id;
       $vendorid=$vehicle->vendor_id;

       //finding relavent names against each primary key and storing it in variables
       $station = Station::find($stationid);
       $status = Status::find($statusid);
       $unit = Unittype::find($unittypeid);
       $vendor = Vendor::find($vendorid);
       $grants = DB::table('asset_grant')
            ->leftJoin('grants', 'grant_id', '=', 'grants.id')
            ->where('vehicle_id',$id)->pluck('grant_name');

       //if else code to handle null values

//       if($grants){
//           $grant_name=$grants->grant_name;
//       }
//       else{
//           $grant_name=null;
//       }
       if($station){
           $station_name=$station->station_name;
       }
       else{
           $station_name=null;
       }
       if($status){
           $status_name=$status->status;
       }
       else{
           $status_name=null;
       }
       if($unit){
           $unittype_name=$unit->name;
       }
       else{
           $unittype_name=null;
       }
       if($vendor){
           $vendor_name=$vendor->vendor_name;
       }
       else{
           $vendor_name=null;
       }
       
       //DB insert query to insert history values to new table

 \    DB::table('vehiclehis')->insert([
        'vehicle_id' => $vehicle->id,
         'van' => $vehicle->van,
         'make' => $vehicle->make,
         'model' => $vehicle->model,
         'year' => $vehicle->year,
         'station_id' => $vehicle->station_id,
         'name' => $station_name,
         'grant_id' => $vehicle->grant_id,
//         'grant_name' => $grant_name,
         'status_id' => $vehicle->status_id,
         'status' => $status_name,
         'unittype_id' => $vehicle->unittype_id,
         'unittype_name' => $unittype_name,
         'vendor_id' => $vehicle->vendor_id,
         'vendor_name' => $vendor_name,
         "created_at" =>  \Carbon\Carbon::now('America/Chicago'),
         "updated_at" => \Carbon\Carbon::now('America/Chicago')
     ]);

     //end of history code.


      $vehicle->grants()->sync( (array) Input::get('grant_id'));

      $vehicle->update([
          'vehicle_number'=> $request->vehicle_number,
          'van'=> $request->van,
          'make'=> $request->make,
          'model'=> $request->model,
          'year'=> $request->year,
          'vehicle_note'=> $request->vehicle_note,
          'vehicle_document'=> $request->vehicle_document,
          'vehicle_image'=> $request->vehicle_image,

          'unittype_id'=> $request->unittype_id,
          'status_id'=> $request->status_id,
          'grant_id'=> $request->grant_id,
          'station_id'=>$request->station_id != '' ? $request->station_id : null,
          'vendor_id'=> $request->vendor_id,
      ]);
      return redirect()->route('vehicles.index');
    }

    /**
     * Display Vehicle.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $relations = [
            'unittypes' => \App\UnitType::get()->pluck('name', 'id')->prepend('Please select', ''),
            'grantsSet' => DB::table('asset_grant')
                ->leftJoin('grants', 'grant_id', '=', 'grants.id')
                ->where('vehicle_id',$id)->pluck('grant_id')->toArray(),
            'statuses' => \App\Status::get()->pluck('status', 'id')->prepend('Please select', ''),
            'stations' => \App\Station::get()->pluck('station_number', 'id')->prepend('Please select', ''),
            'vendors' => \App\Vendor::get()->pluck('vendor_name', 'id')->prepend('Please select', ''),
            'vehids' => \App\Vehicle::get()->pluck('vehicle_number', 'id')->prepend('Please select', ''),

        ];

        $vehicle = Vehicle::findOrFail($id);
        //below one line code is for storing all history related to the $id in variable, which is to be used to display in show page.
        $vehiclehis2 = Vehiclehis::where('vehicle_id', $id)->get();
        //dd($vehiclehis2);
        return view('vehicles.show', compact('vehicle', 'vehiclehis2' ) + $relations);
    }

public function reassign(Request $request)
    {

       $arrayValues = $request->reassignval;
       $newStationID = $request->vehicle_id;

        foreach ($arrayValues as $key => $value) {
            $allAsset = AllAsset::findOrFail($value);
            $allAsset->vehicle_id = $newStationID;
            $allAsset->save();
        }

        $vehicles = Vehicle::all();
        return view('vehicles.index', compact('vehicles'));
    }

    /**
     * Remove Vehicle from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $vehicle = Vehicle::findOrFail($id);

        //start history code
        //storing all foreign key id s in variables
        $stationid=$vehicle->station_id;
        $statusid=$vehicle->status_id;
//        $grantid=$vehicle->grant_id;
        $unittypeid=$vehicle->unittype_id;
        $vendorid=$vehicle->vendor_id;


       
       //finding relavent names against each primary key and storing it in variables
        $station = Station::find($stationid);
//        $grant = Grant::find($grantid);
        $status = Status::find($statusid);
        $unit = Unittype::find($unittypeid);
        $vendor = Vendor::find($vendorid);

       //if else code to handle null values

//        if($grant){
//            $grant_name=$grant->grant_name;
//        }
//        else{
//            $grant_name=null;
//        }
        if($station){
            $station_name=$station->station_name;
        }
        else{
            $station_name=null;
        }
        if($status){
            $status_name=$status->status;
        }
        else{
            $status_name=null;
        }
        if($unit){
            $unittype_name=$unit->name;
        }
        else{
            $unittype_name=null;
        }
        if($vendor){
            $vendor_name=$vendor->vendor_name;
        }
        else{
            $vendor_name=null;
        }
       
       //DB insert query to insert history values to new table

        \DB::table('vehiclehis')->insert([
                'vehicle_id' => $vehicle->id,
                'van' => $vehicle->van,
                'make' => $vehicle->make,
                'model' => $vehicle->model,
                'year' => $vehicle->year,
                'station_id' => $vehicle->station_id,
                'name' => $station_name,
                'grant_id' => $vehicle->grant_id,
//                'grant_name' => $grant_name,
                'status_id' => $vehicle->status_id,
                'status' => $status_name,
                'unittype_id' => $vehicle->unittype_id,
                'unittype_name' => $unittype_name,
                'vendor_id' => $vehicle->vendor_id,
                'vendor_name' => $vendor_name,
                "created_at" =>  \Carbon\Carbon::now('America/Chicago'),
                "updated_at" => \Carbon\Carbon::now('America/Chicago')
            ]);
     //end history code.


        $vehicle->grants()->detach(Input::get('grant_id'));
        $vehicle->delete();

        return redirect()->route('vehicles.index');
    }
}
