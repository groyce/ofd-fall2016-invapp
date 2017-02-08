<?php namespace Sofa\Eloquent\Scopes;

use App\MobileComputer;
use Illuminate\Database\Query\Builder as BaseBuilder;

use Illuminate\Database\Query\Builder;
use Illuminate\Database\Query\Model;
use Illuminate\Database\Query\ScopeInterface;

class AssetScope implements ScopeInterface {

    /**
     * Apply scope on the query.
     *
     * @param \Illuminate\Database\Eloquent\Builder  $builder
     * @param \Illuminate\Database\Eloquent\Model  $model
     * @return void
     */

    // it is started to place global scopes  for the statistics variables
    // need to revisit, have not implemented
    public function apply(Builder $builder, Model $model)
    {
        $stations = Station::count();
        $vehicles = Vehicle::count();
        $total_assets = AllAsset::count();
        $assets_available = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'available')
            ->get();
        $available = count($assets_available);

        $assets_repairs = AllAsset::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('all_assets.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $vehicles_repairs = Vehicle::join('statuses', 'status_id', '=', 'statuses.id' )
            ->select('vehicles.*')
            ->where('status', '=', 'in-repair')
            ->get();

        $in_repairs = $assets_repairs ->merge($vehicles_repairs);
        $repairs = count($in_repairs);
    }

}