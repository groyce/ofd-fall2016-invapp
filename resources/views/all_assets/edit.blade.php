@extends('layouts.app')
@section('crumbs')
    <ol class="breadcrumb">
        <li><a href="{{ url('/') }}">Dashboard</a></li>
        <li><a href="{{ route('all_assets.index') }}">Assets</a></li>
        <li class="active">Edit</li>
    </ol>
@endsection

@section('content')

{!! Form::model($all_assets, ['method' => 'PUT', 'route' => ['all_assets.update', $all_assets->id]]) !!}

    <div class="panel panel-default panel-shadow">
        <div class="panel-heading">
            Edit Asset
        </div>
            <div class="panel-body">
                @if($all_assets->asset_type=="IPad")
                    @include('assetedit.ipad')
                 @elseif($all_assets->asset_type=="HPD")
                    @include('assetedit.hpd')
                 @elseif($all_assets->asset_type=="Computer Monitor")
                    @include('assetedit.computer_monitor')
                 @elseif($all_assets->asset_type=="Desktop Monitor")
                    @include('assetedit.computer_monitor')
                 @elseif($all_assets->asset_type=="X-Series")
                    @include('assetedit.x_series')
                 @elseif($all_assets->asset_type=="Unit Radio")
                    @include('assetedit.unit_radio')
                 @elseif($all_assets->asset_type=="Cad")
                    @include('assetedit.cad')
                 @elseif($all_assets->asset_type=="Trimble GPS Unit")
                    @include('assetedit.trimble_gps')
                 @elseif($all_assets->asset_type=="Team Viewer")
                    @include('assetedit.teamviewer')
                 @elseif($all_assets->asset_type=="station")
                    @include('assetedit.staion')
                 @elseif($all_assets->asset_type=="Sim Card")
                    @include('assetedit.simcard')
                 @elseif($all_assets->asset_type=="Printer")
                    @include('assetedit.printer')
                 @elseif($all_assets->asset_type=="Portable Radio")
                    @include('assetedit.portable_radio')
                 @elseif($all_assets->asset_type=="person")
                    @include('assetedit.person')
                 @elseif($all_assets->asset_type=="Netmotion")
                    @include('assetedit.netmotion')
                 @elseif($all_assets->asset_type=="Multi-Tech Modem")
                    @include('assetedit.multi_tech_modem')
                 @elseif($all_assets->asset_type=="Mobile Computer")
                    @include('assetedit.mobile_computer')
                 @elseif($all_assets->asset_type=="Laptop")
                    @include('assetedit.laptop_computer')
                 @elseif($all_assets->asset_type=="InMotion")
                    @include('assetedit.inmotion')
                 @elseif($all_assets->asset_type=="Dock")
                    @include('assetedit.dock')
                 @elseif($all_assets->asset_type=="Desktop Computer")
                    @include('assetedit.desktop_computer')
                @elseif($all_assets->asset_type=="misc")
                    @include('assetedit.misc')
                @elseif($all_assets->asset_type=="default3")
                    @include('assetedit.default3')
                 @elseif($all_assets->asset_type=="")
                    <p>No Data in Asset Type field</p>
</div>
                @elseif($all_assets->asset_type!="")
                    <div class="panel panel-default">
                    <div class="panel-heading">
                        Edit
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-4 form-group">
                                {!! Form::label('Asset Type', 'Asset Type', ['class' => 'control-label']) !!}
                                {!! Form::text('asset_type', old('asset_type'), ['class' => 'form-control']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('asset_type'))
                                    <p class="help-block">
                                        {{ $errors->first('asset_type') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('name', 'Asset Name', ['class' => 'control-label']) !!}
                                {!! Form::text('name', old('name'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('name'))
                                    <p class="help-block">
                                        {{ $errors->first('name') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('model', 'Model', ['class' => 'control-label']) !!}
                                {!! Form::text('model', old('model'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('model'))
                                    <p class="help-block">
                                        {{ $errors->first('model') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('make', 'Make', ['class' => 'control-label']) !!}
                                {!! Form::text('make', old('make'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('make'))
                                    <p class="help-block">
                                        {{ $errors->first('make') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('manu', 'Manufacturer', ['class' => 'control-label']) !!}
                                {!! Form::text('manu', old('manu'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('manu'))
                                    <p class="help-block">
                                        {{ $errors->first('manu') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('serial_number', 'Serial Number', ['class' => 'control-label']) !!}
                                {!! Form::text('serial_number', old('serial_number'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('serial_number'))
                                    <p class="help-block">
                                        {{ $errors->first('serial_number') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('date_purchased', 'Date Purchased', ['class' => 'control-label']) !!}
                                {!! Form::text('date_purchased', old('date_purchased'), ['class' => 'form-control date', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('date_purchased'))
                                    <p class="help-block">
                                        {{ $errors->first('date_purchased') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('warranty_date', 'Warranty Date', ['class' => 'control-label']) !!}
                                {!! Form::text('warranty_date', old('warranty_date'), ['class' => 'form-control date', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('warranty_date'))
                                    <p class="help-block">
                                        {{ $errors->first('warranty_date') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('cost', 'Cost', ['class' => 'control-label']) !!}
                                {!! Form::text('cost', old('cost'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('cost'))
                                    <p class="help-block">
                                        {{ $errors->first('cost') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('imei', 'IMEI #', ['class' => 'control-label']) !!}
                                {!! Form::text('imei', old('imei'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('imei'))
                                    <p class="help-block">
                                        {{ $errors->first('imei') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('mobile_type', 'Mobile Type', ['class' => 'control-label']) !!}
                                {!! Form::text('mobile_type', old('mobile_type'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('mobile_type'))
                                    <p class="help-block">
                                        {{ $errors->first('mobile_type') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('os', 'Operating System', ['class' => 'control-label']) !!}
                                {!! Form::text('os', old('os'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('os'))
                                    <p class="help-block">
                                        {{ $errors->first('os') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('ip_address', 'IP address', ['class' => 'control-label']) !!}
                                {!! Form::text('ip_address', old('ip_address'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('ip_address'))
                                    <p class="help-block">
                                        {{ $errors->first('ip_address') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('mac', 'MAC #', ['class' => 'control-label']) !!}
                                {!! Form::text('mac', old('mac'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('mac'))
                                    <p class="help-block">
                                        {{ $errors->first('mac') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('sim_phone', 'Sim Card Phone #', ['class' => 'control-label']) !!}
                                {!! Form::text('sim_phone', old('sim_phone'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('sim_phone'))
                                    <p class="help-block">
                                        {{ $errors->first('sim_phone') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('firmware_ver', 'Firmware Version', ['class' => 'control-label']) !!}
                                {!! Form::text('firmware_ver', old('firmware_ver'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('firmware_ver'))
                                    <p class="help-block">
                                        {{ $errors->first('firmware_ver') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('asset_tag', 'Asset Tag #', ['class' => 'control-label']) !!}
                                {!! Form::text('asset_tag', old('asset_tag'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('asset_tag'))
                                    <p class="help-block">
                                        {{ $errors->first('asset_tag') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-3 form-group">
                                {!! Form::label('station_id', 'Assign to Station', ['class' => 'control-label']) !!}
                                {!! Form::select('station_id', $stations, old('station_id'), ['class' => 'form-control']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('station_id'))
                                    <p class="help-block">
                                        {{ $errors->first('station_id') }}
                                    </p>
                                @endif
                            </div>

                            <div class="col-xs-3 form-group">
                                {!! Form::label('vehicle_id', 'Assign to a vehicle', ['class' => 'control-label']) !!}
                                {!! Form::select('vehicle_id', $vehicles, old('vehicle_id'), ['class' => 'form-control']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('vehicle_id'))
                                    <p class="help-block">
                                        {{ $errors->first('vehicle_id') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-3 form-group">
                                {!! Form::label('status_id', 'Status', ['class' => 'control-label']) !!}
                                {!! Form::select('status_id', $statuses, old('status_id'), ['class' => 'form-control']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('status_id'))
                                    <p class="help-block">
                                        {{ $errors->first('status_id') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-3 form-group">
                                {!! Form::label('vendor_id', 'Vendor', ['class' => 'control-label']) !!}
                                {!! Form::select('vendor_id', $vendors, old('vendor_id'), ['class' => 'form-control']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('vendor_id'))
                                    <p class="help-block">
                                        {{ $errors->first('vendor_id') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-3 form-group">
                                {!! Form::label('grant_id', 'Grant', ['class' => 'control-label']) !!}
                                {!! Form::select('grant_id[]', $grants, ($grantsSet), [
                                    'id' => 'grants',
                                    'class' => 'form-control','multiple',
                                    ]) !!}

                                <p class="help-block"></p>
                                @if($errors->has('grant_id'))
                                    <p class="help-block">
                                        {{ $errors->first('grant_id') }}
                                    </p>
                                @endif
                            </div>
                            <div class="col-xs-4 form-group">
                                {!! Form::label('comments', 'Comments', ['class' => 'control-label']) !!}
                                {!! Form::textarea('comments', old('comments'), ['class' => 'form-control ', 'placeholder' => '']) !!}
                                <p class="help-block"></p>
                                @if($errors->has('comments'))
                                    <p class="help-block">
                                        {{ $errors->first('comments') }}
                                    </p>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                @endif

        {!! Form::submit('Save', ['class' => 'btn btn-success']) !!}
        {!! Form::close() !!}
</div>

        

        


@stop

@section('javascript')
    @parent
    <script>
        $('.date').datepicker({
            autoclose: true,
            dateFormat: "yy-mm-dd"
        });
    </script>

    <script>
        $("#assets").change(function(){
            $(".create").hide();
            var id = $(this).children(":selected").attr("id");
            $("#create-" + id).fadeIn(400);
        });
    </script>


@stop