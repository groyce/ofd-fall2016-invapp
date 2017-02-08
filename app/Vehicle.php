<?php
namespace App;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Vehicle
 *
 * @package App
 * @property string $van
 * @property string $make
 * @property string $model
 * @property integer $year
 * @property integer $unittype_id
 * @property-read \App\UnitType $unittype
*/
class Vehicle extends Model
{
    use SoftDeletes;
    
    protected $fillable = [
        'vehicle_number',
        'van',
        'make',
        'model',
        'year',
        'vehicle_document',
        'vehicle_image',
        'vehicle_note',
        'unittype_id',
        'status_id',
        'station_id',
        'vendor_id',
    ];
    
    
    /**
     * Set to null if empty
     * @param $input
     */
    public function setUnitTypeIdAttribute($input)
    {
        $this->attributes['unittype_id'] = $input ? $input : null;
    }
    
    public function unittype()
    {
        return $this->belongsTo(\App\UnitType::class);
    }

    public function setGrantIdAttribute($input)
    {
        $this->attributes['grant_id'] = $input ? $input : null;
    }

    public function grants()
    {
        return $this->belongsToMany('\App\Grant', 'asset_grant','vehicle_id', 'grant_id');
    }

    public function setStationIdAttribute($input)
    {
        $this->attributes['station_id'] = $input ? $input : null;
    }

    public function station()
    {
        return $this->belongsTo(\App\Station::class);
    }

    public function setStatusIdAttribute($input)
    {
        $this->attributes['status_id'] = $input ? $input : null;
    }

    public function status()
    {
        return $this->belongsTo(\App\Status::class);
    }

    public function setVendorIdAttribute($input)
    {
        $this->attributes['vendor_id'] = $input ? $input : null;
    }
    public function vendor() {
        return $this->belongsTo(\App\Vendor::class);

    }

    public function assets()
    {
        return $this->hasMany(AllAsset::class, 'assets_id');
    }


    public function allassets() {
        return $this->hasMany(\App\AllAsset::class);

    }

    public function related_files() {
        return $this->hasMany(\App\RelatedFile::class);

    }

    //Intended to use with multiple file uploads (in progress)
    //    public function relatedfile()
//    {
//        return $this->belongsTo(\App\Status::class);
//    }
}
