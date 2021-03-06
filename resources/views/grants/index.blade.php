@extends('layouts.app')
@section('crumbs')
<ol class="breadcrumb">
    <li><a href="{{ url('/') }}">Dashboard</a></li>
    <li class="active">Grants</li>
</ol>
@endsection

@section('content')

<div class="panel panel-default" hidden>
    <div class="panel-heading">
        Grant Listing
    </div>

    <div class="panel-body">

        <a id="toolbar" href="{{ route('grants.create') }}" class="btn btn-new"><i class="fa fa-plus" aria-hidden="true"></i></a>

        <table  data-toolbar="#toolbar"
        data-toggle="table"  
        data-search="true" 
        data-cookie="true"
        data-click-to-select="true"
        data-cookie-id-table="grant-index-v1.1-1"
        data-show-columns="true"
        id="table">
        <thead>
            <tr>
                <th data-sortable="true">Grant Name</th>
                <th data-sortable="true">Date Issued</th>
                <th data-sortable="true">Type</th>
                <th data-sortable="true">Date Matures</th>
                <th data-sortable="true">Grant Value</th>
                <th data-sortable="true">Comments</th>
                <th data-switchable="false" data-searchable="false" data-sortable="false">&nbsp;</th>
            </tr>
        </thead>

        <tbody>
            @if (count($grants) > 0)
                @foreach ($grants as $grant)
                    <tr data-entry-id="{{ $grant->id }}">

                        <td>{{ $grant->grant_name }}</td>
                        <td>{{ $grant->date_issued }}</td>
                        <td>{{ $grant->grant_type }}</td>
                        <td>{{ $grant->date_matures }}</td>
                        <td id="currency" style="text-align: right;">{{ $grant->grant_value }}</td>
                        <td>{{ $grant->grant_comments }}</td>
                        <td>
                            <div style="float: right;">
                            <a href="{{ route('grants.show',[$grant->id]) }}" class="btn btn-xs btn-info"><i class="fa fa-eye" aria-hidden="true"></i></a>
                            <a href="{{ route('grants.edit',[$grant->id]) }}" class="btn btn-xs btn-warning"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                            <a type="button" data-toggle="modal" data-target="#{{ $grant->id }}" class="btn btn-xs btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a>
                            </div>
                        </td>
                    </tr>

                    <div class="modal fade" id="{{ $grant->id }}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Warning</h4>
                                </div>
                                <div class="modal-body">
                                    Are you sure you want to delete {{ $grant->grant_name }}? This action cannot be undone.
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    {!! Form::open(array(
                                    'style' => 'display: inline-block;',
                                    'method' => 'DELETE',
                                    'route' => ['grants.destroy', $grant->id])) !!}
                                    {{Form::button('<i class="fa fa-trash"></i> DELETE', array('type' => 'submit', 'class' => 'btn btn-danger'))}}
                                    {!! Form::close() !!}
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            @else
            <tr>
                <td colspan="7">No entries in table</td>
            </tr>
            @endif
        </tbody>
    </table>
</div>

</div>
@stop

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
        pagination: true,
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

<script>

Number.prototype.formatMoney = function(c, d, t){
var n = this, 
    c = isNaN(c = Math.abs(c)) ? 2 : c, 
    d = d == undefined ? "." : d, 
    t = t == undefined ? "," : t, 
    s = n < 0 ? "-" : "", 
    i = String(parseInt(n = Math.abs(Number(n) || 0).toFixed(c))), 
    j = (j = i.length) > 3 ? j % 3 : 0;
   return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
 };

$( document ).ready( function() {

     $('#table #currency').each(function() {
        var value = $(this).html();
        $(this).html(( "$"+ ( parseInt(value)).formatMoney(2) ));
     });

}); 

</script>





<script>
    window.route_mass_crud_entries_destroy = '{{ route('vendors.mass_destroy') }}';
</script>
@endsection