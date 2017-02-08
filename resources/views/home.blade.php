@extends('layouts.app')
@section('crumbs')
  <ol class="breadcrumb">
    <li class="active">Dashboard</li>
  </ol>
@endsection


@section('content')

    <!-- Top navigation icons starting here-->
    <div class="col-md-12">
        <div class="row" style="margin: inherit">
        <a href="{{ route('all_assets.index') }}">
            <div class="col-md-3 large-category">
              <div class="thumbnail">
                <div class="thumbnail-dash">
                  <i class="fa fa-th fa-4x" aria-hidden="true"></i>
                </div>
                <div class="caption">
                  <h3>All Assets</h3>
                </div>
              </div>
            </div>
        </a>

        <a href="{{ route('stations.index') }}">
            <div class="col-md-3 large-category">
              <div class="thumbnail stations">
                <div class="thumbnail-dash">
                  <i class="fa fa-building fa-4x" aria-hidden="true"></i>
                </div>
                <div class="caption">
                  <h3>Stations</h3>
                </div>
              </div>
            </div>
        </a>

        <a href="{{ route('vehicles.index') }}">
            <div class="col-md-3 large-category">
              <div class="thumbnail">
                <div class="thumbnail-dash">
                  <i class="fa fa-ambulance fa-4x" aria-hidden="true"></i>
                </div>
                <div class="caption">
                  <h3>Vehicles</h3>
                </div>
              </div>
            </div>
        </a>

        <a href="{{ route('repairs.index') }}">
            <div class="col-md-3 large-category">
          <div class="thumbnail">
            <div class="thumbnail-dash">
              <i class="fa fa-wrench fa-4x" aria-hidden="true"></i>
            </div>
            <div class="caption">
              <h3>Service</h3>
            </div>
          </div>
        </div>
        </a>

    </div>
    </div>
    <!-- Top navigation icons ends here-->

    <div class="col-md-12">
        <div class="row">

            <!-- To do list is starting below-->
            <div class="col-md-8" style="margin-left: 8px">
                <div class="panel panel-shadow"  style="margin:auto; margin-bottom: 15px;" hidden>
                    <div class="h4" style="margin-left: 10px">
                    Reminders
                </div>
                    <div class="panel-body panel-border">
                    <a id="toolbar" data-toggle="modal" data-target="#myModal" class="btn btn-new" style="margin-left: 10px"><i class="fa fa-sticky-note-o" aria-hidden="true"></i></a>
                        <table  data-toolbar="#toolbar"
                                data-toggle="table"
                                data-search="true"
                                data-cookie="true"
                                data-click-to-select="true"
                                data-cookie-id-table="dashboard-index-v1.1-1"
                                data-show-columns="true"
                                id="table">
                                <thead>
                                    <tr>
                                      <th>Task</th>
                                      <th>Notes</th>
                                      <th data-switchable="false" data-searchable="false" data-sortable="false">&nbsp;</th>
                                    </tr>
                                </thead>
                            <tbody>

                                @if (count($todos) > 0)
                                    @foreach ($todos as $todo)
                                        <tr data-entry-id="{{ $todo->id }}">
                                            <td>{{ $todo->task }}</td>
                                            <td>{!! $todo->notepad !!}</td>
                                            <td>
                                              <div style="float: right;">
                                                  {{--<a href="{{ route('todos.show',[$todo->id]) }}" class="btn btn-xs btn-info"><i class="fa fa-eye" aria-hidden="true"></i></a>--}}
                                                  <a href="{{ route('todos.edit',[$todo->id]) }}" class="btn btn-xs btn-warning"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                                  <a type="button" data-toggle="modal" data-target="#{{ $todo->id }}" class="btn btn-xs btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                              </div>
                                            </td>
                                        </tr>


                                        <div class="modal fade" id="{{ $todo->id }}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Done</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        Are you sure, it is done?
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                        {!! Form::open(array(
                                                            'style' => 'display: inline-block;',
                                                            'method' => 'DELETE',
                                                            'route' => ['todos.destroy', $todo->id])) !!}
                                                        {{Form::button('<i class="fa fa-paper-plane-o"></i> Done', array('type' => 'submit', 'class' => 'btn btn-danger'))}}
                                                        {!! Form::close() !!}
                                                    </div>
                                            </div>
                                          </div>
                                        </div>
                                    @endforeach
                                @else
                                    <tr>
                                        <td colspan="4">No reminders to show.</td>
                                    </tr>
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">New Note</h4>
                            </div>
                            <div class="modal-body">
                                {!! Form::open(['method' => 'POST', 'route' => ['todos.store']]) !!}
                                    <div class="row">
                                        <div class="col-xs-12 form-group">
                                            {!! Form::label('task', 'Task', ['class' => 'control-label']) !!}
                                            {!! Form::text('task', old('task'), ['class' => 'form-control', 'placeholder' => '']) !!}
                                            <p class="help-block"></p>
                                            @if($errors->has('task'))
                                                <p class="help-block">
                                                    {{ $errors->first('task') }}
                                                </p>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 form-group">
                                            {!! Form::label('notepad', 'Notepad', ['class' => 'control-label']) !!}
                                            {!! Form::textarea('notepad', old('notepad'), ['class' => 'form-control ', 'placeholder' => '']) !!}
                                            <p class="help-block"></p>
                                            @if($errors->has('notepad'))
                                                <p class="help-block">
                                                    {{ $errors->first('notepad') }}
                                                </p>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                {!! Form::submit(('Create'), ['class' => 'btn btn-success']) !!}
                                {!! Form::close() !!}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- To do list is ends here-->

            <!-- Statistics starting here-->
            <div class="col-md-4" style="margin: inherit">
                <div class="row" style="margin: auto">
                    <div class="panel panel-shadow">
                        <div class="h4" style="margin-left: 10px">
                            Statistics
                        </div>
                        <div class="panel-body panel-border">
                                <div class="row" style="margin-top: 10px">
                                    <div class="col-md-12" style="align-content: center">
                                        <div class="col-md-6 no-padding-left-right">
                                            <div class="well well-sm text-info">
                                                <span class="text-muted">Total Assets</span>
                                                {{--<span class="text-muted">--}}
                                                    {{--<i class="fa fa-th-list"></i>--}}
                                                {{--</span>--}}
                                                <span class="h1">{{$total_assets}}</span>
                                            </div>
                                        </div>
                                        <div class="col-md-6 no-padding-left-right">
                                            <div class="well well-sm text-info">
                                                <span class="text-muted">Available Assets</span>
                                                {{--<span class="text-muted">--}}
                                                {{--<i class="fa fa-ambulance"></i>--}}
                                                {{--</span>--}}
                                                <span class="h1">{{$available}}</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 no-padding-left-right">
                                            <div class="well well-sm text-info">
                                                <span class="text-muted">Stations</span>
                                                {{--<span class="text-muted">--}}
                                                    {{--<i class="fa fa-ambulance"></i>--}}
                                                {{--</span>--}}
                                                <span class="h1">{{$stations}}</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 no-padding-left-right">
                                            <div class="well well-sm text-info">
                                                <span class="text-muted">Units</span>
                                                {{--<span class="text-muted">--}}
                                                    {{--<i class="fa fa-ambulance"></i>--}}
                                                {{--</span>--}}
                                                <span class="h1">{{$vehicles}}</span>
                                            </div>
                                        </div>
                                        <div class="col-md-4 no-padding-left-right">
                                            <div class="well well-sm text-info">
                                                <span class="text-muted">In-repair</span>
                                                {{--<span class="text-muted">--}}
                                                    {{--<i class="fa fa-ambulance"></i>--}}
                                                {{--</span>--}}
                                                <span class="h1">{{$repairs}}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            <!-- Statistics ends here-->
        </div>
    </div>

@endsection

@section('javascript')

<script src="{{ url('js/extensions/cookie') }}/bootstrap-table-cookie.js"></script>
<script src="{{ url('js/extensions/mobile') }}/bootstrap-table-mobile.js"></script>

<script src="{{ url('js/export') }}/bootstrap-table-export.js"></script>
<script src="{{ url('js/export') }}/tableExport.js"></script>
<script src="{{ url('js/export') }}/jquery.base64.js"></script>

<script type="text/javascript">

    $('#table').bootstrapTable({
        classes: 'table table-responsive table-no-bordered table-striped table-hover',
        iconsPrefix: 'fa',
        cookie: true,
        cookieExpire: '2y',
        mobileResponsive: true,
        sortable: true,
        showExport: true,
        showColumns: true,
        exportTypes: ['csv', 'excel'],
        pageList: ['10','25','50','100','150','200','500','1000'],
        exportOptions: {
            fileName: 'assets-export-' + (new Date()).toISOString().slice(0,10),
        },
        icons: {
            paginationSwitchDown: 'fa-caret-square-o-down',
            paginationSwitchUp: 'fa-caret-square-o-up',
            sort: 'fa fa-sort-amount-desc',
            plus: 'fa fa-plus',
            minus: 'fa fa-minus',
            columns: 'fa-columns',
            refresh: 'fa-refresh'
        },
    });
    $(".panel").fadeIn("fast");

</script>

@endsection