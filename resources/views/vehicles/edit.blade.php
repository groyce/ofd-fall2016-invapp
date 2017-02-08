@extends('layouts.app')
@section('crumbs')
    <ol class="breadcrumb">
        <li><a href="{{ url('/') }}">Dashboard</a></li>
        <li><a href="{{ route('vehicles.index') }}">Vehicles</a></li>
        <li class="active">{{ $vehicle->van }}</li>
    </ol>
@endsection

@section('content')

    {!! Form::model($vehicle, ['method' => 'PUT', 'route' => ['vehicles.update', $vehicle->id], 'files' => true,]) !!}

    <div class="panel panel-default">
        <div class="panel-heading">
            Vehicle Edit
        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-xs-3 form-group">
                    {!! Form::label('van', 'OFD VAN #', ['class' => 'control-label']) !!}
                    {!! Form::text('van', old('van'), ['class' => 'form-control', 'placeholder' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('van'))
                        <p class="help-block">
                            {{ $errors->first('van') }}
                        </p>
                    @endif
                </div>

                <div class="col-xs-3 form-group">
                    {!! Form::label('year', 'Year', ['class' => 'control-label']) !!}
                    {!! Form::number('year', old('year'), ['class' => 'form-control', 'placeholder' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('year'))
                        <p class="help-block">
                            {{ $errors->first('year') }}
                        </p>
                    @endif
                </div>

                <div class="col-xs-3 form-group">
                    {!! Form::label('make', 'Make', ['class' => 'control-label']) !!}
                    {!! Form::text('make', old('make'), ['class' => 'form-control', 'placeholder' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('make'))
                        <p class="help-block">
                            {{ $errors->first('make') }}
                        </p>
                    @endif
                </div>

                <div class="col-xs-3 form-group">
                    {!! Form::label('model', 'Model', ['class' => 'control-label']) !!}
                    {!! Form::text('model', old('model'), ['class' => 'form-control', 'placeholder' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('model'))
                        <p class="help-block">
                            {{ $errors->first('model') }}
                        </p>
                    @endif
                </div>

                <div class="col-xs-3 form-group">
                    {!! Form::label('Vehicle #', 'Vehicle #', ['class' => 'control-label']) !!}
                    {!! Form::text('vehicle_number', old('vehicle_number'), ['class' => 'form-control', 'placeholder' => '']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('vehicle_number'))
                        <p class="help-block">
                            {{ $errors->first('vehicle_number') }}
                        </p>
                    @endif
                </div>

                <div class="col-xs-3 form-group">
                    {!! Form::label('unittype_id', 'Type', ['class' => 'control-label']) !!}
                    {!! Form::select('unittype_id', $unittypes, old('unittype_id'), ['class' => 'form-control']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('unittype_id'))
                        <p class="help-block">
                            {{ $errors->first('unittype_id') }}
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
                {!! Form::label('station_id', 'Location', ['class' => 'control-label']) !!}
                {!! Form::select('station_id', $stations, old('station_id'), ['class' => 'form-control']) !!}
                <p class="help-block"></p>
                @if($errors->has('station_id'))
                    <p class="help-block">
                        {{ $errors->first('station_id') }}
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
                    {!! Form::select('grant_id[]',$grants, ($grantsSet), [
                        'class' => 'form-control','multiple',
                        ]) !!}

                    <p class="help-block"></p>
                    @if($errors->has('grant_id'))
                        <p class="help-block">
                            {{ $errors->first('grant_id') }}
                        </p>
                    @endif
                </div>
                <div class="col-xs-3 form-group">
                    {!! Form::label('Note', 'Note', ['class' => 'control-label']) !!}
                    {!! Form::textarea('vehicle_note', old('vehicle_note'), ['class' => 'form-control', 'size' => '30x3']) !!}
                    <p class="help-block"></p>
                    @if($errors->has('vehicle_note'))
                        <p class="help-block">
                            {{ $errors->first('vehicle_note') }}
                        </p>
                    @endif
                </div>
                <div class="col-xs-3 form-group">
                    {!! Form::label('vehicle_document', 'Related Document', ['class' => 'control-label']) !!}
                    {!! Form::file('vehicle_document', old('vehicle_document'), ['class' => 'form-control']) !!}
                    {!! Form::hidden('vehicle_document_max_size', 20) !!}
                    <p class="help-block">up to 20mb</p>
                    @if($errors->has('vehicle_document'))
                        <p class="help-block">
                            {{ $errors->first('vehicle_document') }}
                        </p>
                    @endif
                </div>
                <div class="col-xs-3 form-group">
                    {!! Form::label('vehicle_image', 'Related Photo', ['class' => 'control-label']) !!}
                    {!! Form::file('vehicle_image', old('vehicle_image'), ['class' => 'form-control']) !!}
                    {!! Form::hidden('vehicle_image_max_size', 20) !!}
                    {!! Form::hidden('vehicle_image_max_width', 5000) !!}
                    {!! Form::hidden('vehicle_image_max_height', 5000) !!}
                    <p class="help-block">up to 20mb</p>
                    @if($errors->has('vehicle_image'))
                        <p class="help-block">
                            {{ $errors->first('vehicle_image') }}
                        </p>
                    @endif
                </div>

</div>
<div>
  {!! Form::submit('Update', ['class' => 'btn btn-success']) !!}
    {!! Form::close() !!}
    <a href="{{ route('vehicles.index') }}" class="btn btn-default">Cancel</a>
    </div>
@stop

