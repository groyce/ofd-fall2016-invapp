@extends('layouts.app')
@section('crumbs')
    <ol class="breadcrumb">
        <li><a href="{{ url('/') }}">Dashboard</a></li>
        <li><a href="{{ route('vehicles.index') }}">Vehicles</a></li>
        <li class="active">{{ $vehicle->van }}</li>
    </ol>
@endsection

@section('content')
{!! Form::model($vehicle,['method' => 'PUT', 'route' => ['vehicles.reassign', $vehicle->id], 'files' => true,]) !!}
    <div class="col-md-12">
        <div class="col-md-4 nopadding">
            <div class="panel panel-default panel-border">
                <div class="panel-heading">
                    <i class="fa fa-info-circle" aria-hidden="true"></i> Information
                </div>
                <div class="panel-body" style="height:190px;">
                        <table class="table">
                            <tr>
                                <th>OFD VAN #</th>
                                <td>{{ $vehicle->van }}</td>
                            </tr>
                            <tr>
                                <th>Make</th>
                                <td>{{ $vehicle->make }}</td>
                            </tr>
                            <tr>
                                <th>Model</th>
                                <td>{{ $vehicle->model }}</td>
                            </tr>
                            <tr>
                                <th>Year</th>
                                <td>{{ $vehicle->year }}</td>
                            </tr>
                        </table>
                    </div>
            </div>
        </div>
        <div class="col-md-4 nopadding">
            <div class="panel panel-default panel-border">
                <div class="panel-heading">
                    <i class="fa fa-building" aria-hidden="true"></i> Status
                </div>
                <div class="panel-body" style="height:190px;">
                    <table class="table">
                        <tr>
                            <th>Type</th>
                            <td>{{ $vehicle->unittype->name or '' }}</td>
                        </tr>
                        <tr>
                            <th>Status</th>
                            <td>{{ $vehicle->status->status or '' }}</td>
                        </tr>
                        <tr>
                            <th>Location</th>
                            <td>{{$vehicle->station->station_name or '' }}{{ $vehicle->station->station_number or '' }}</td>
                        </tr>
                        <tr>
                            <th>Vendor</th>
                            <td>{{$vehicle->vendor->vendor_name or ''}}</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-4 nopadding">
            <div class="panel panel-default panel-border">
                <div class="panel-heading">
                    <i class="fa fa-file" aria-hidden="true"></i> Documents
                </div>

                <div class="panel-body" style="height:190px;">
                    <table class="table">
                        <tr>
                            <th>Related Document</th>
                            <td><a href="{{ asset('uploads/'.$vehicle->vehicle_document) }}">Download file</a></td>
                        </tr>
                        <tr>
                            <th>Related Photo</th>
                            <td>@if($vehicle->vehicle_image!= '')<img src="{{ asset('uploads/thumb/'.$vehicle->vehicle_image) }}">@endif</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <div id="exTab3" class="pill-container">
            <ul  class="nav nav-pills">
                <li class="active">
                    <a href="#1b" data-toggle="tab">Assets</a>
                </li>
                <li>
                    <a href="#2b" data-toggle="tab">History</a>
                </li>
            </ul>
            <div class="tab-content clearfix">
                <div class="tab-pane active" id="1b">
                    <div class="input-group" style="width: 250px;">
                        {!! Form::select('vehicle_id', $vehids, old('vehicle_id'), ['class' => 'form-control']) !!}
                        <span class="input-group-btn">
                                {!! Form::submit('Reassign',['class' => 'btn btn-default']) !!}
                            {!! Form::close() !!}
                            </span>
                    </div>
                    <table class="table table striped datatable">
                        <tr>
                            <th> </th>
                            <th>Asset Type</th>
                            <th>Asset Name</th>
                            <th>Model</th>
                            <th>Make</th>
                            <th>Manufacturer</th>
                            <th>Serial Number</th>
                            <th>Date Purchased</th>
                            <th>Warranty Date</th>
                            <th>Cost</th>
                            <th>Comments</th>
                            <th>Status</th>
                            <th>Location</th>
                        </tr>
                        @foreach($vehicle->allassets as $all_asset)
                            <tr>
                                <td><label><input type="checkbox" id="reassignids" name="reassignval[]" value="{{$all_asset->id}}" ></label></td>
                                <td>{{ $all_asset->asset_type }}</td>
                                <td>{{ $all_asset->name }}</td>
                                <td>{{ $all_asset->model }}</td>
                                <td>{{ $all_asset->make }}</td>
                                <td>{{ $all_asset->manu }}</td>
                                <td>{{ $all_asset->serial_number }}</td>
                                <td>{{ $all_asset->date_purchased }}</td>
                                <td>{{ $all_asset->warranty_date }}</td>
                                <td>{{ $all_asset->cost }}</td>
                                <td>{{ $all_asset->comments }}</td>
                                <td>{{$all_asset->status->status or ''}}</td>
                                <td>{{$all_asset->station->station_number or ''}}</td>
                                {{--{{$all_asset->station->station_name or ''}}--}}
                            </tr>
                        @endforeach
                    </table>
                </div>
                <div class="tab-pane" id="2b">
                    <table class="table table striped datatable">
                        <tr>

                            <th>OFD Van #</th>
                            <th>Make</th>
                            <th>Model</th>
                            <th>Year</th>

                            <th>Station</th>
                            <th>Status</th>
                            <th>Grant</th>
                            <th>Unit Type</th>
                            <th>Vendor</th>
                            <th>Updated On</th>
                        </tr>
                        @foreach($vehiclehis2 as $vehiclehis)
                            <tr>
                                <td>{{ $vehiclehis->van }}</td>
                                <td>{{ $vehiclehis->make }}</td>
                                <td>{{ $vehiclehis->model }}</td>
                                <td>{{ $vehiclehis->year }}</td>
                                <td>{{ $vehiclehis->name }}</td>
                                <td>{{ $vehiclehis->status }}</td>
                                <td>{{ $vehiclehis->grant_name }}</td>
                                <td>{{ $vehiclehis->unittype_name }}</td>
                                <td>{{ $vehiclehis->vendor_name }}</td>
                                <td>{{ $vehiclehis->created_at }}</td>


                            </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
@stop
