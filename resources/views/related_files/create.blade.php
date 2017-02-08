@extends('layouts.app')

@section('content')
    <h3 class="page-title">Related Files</h3>
    {!! Form::open(['method' => 'POST', 'route' => ['related_files.store'], 'files' => true,]) !!}

    <div class="panel panel-default">
        <div class="panel-heading">
            Create
        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-xs-12 form-group">
                    {!! Form::label('related_file', 'Related File', ['class' => 'control-label']) !!}
                    {!! Form::file('related_file[]', ['class' => 'form-control','multiple']) !!}
                    {!! Form::hidden('related_file_max_size', 20) !!}
                    <p class="help-block">upto 20mb</p>
                    @if($errors->has('related_file'))
                        <p class="help-block">
                            {{ $errors->first('related_file') }}
                        </p>
                    @endif
                </div>
            </div>
        </div>
    </div>

    {!! Form::submit('Save', ['class' => 'btn btn-danger']) !!}
    {!! Form::close() !!}

    {{--<form method="post" action="/station" enctype="multipart/form-data">--}}
        {{--{{ csrf_field() }}--}}

        {{--<input type="file" name="station">--}}

        {{--<button type="submit">Save Station Doc</button>--}}

    {{--</form>--}}
@stop

