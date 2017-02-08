<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCapDatabase extends Migration {

        /**
         * Run the migrations.
         *
         * @return void
         */
         public function up()
         {
            
	    /**
	     * Table: all_assethis
	     */
	    Schema::create('all_assethis', function($table) {
                $table->increments('id')->unsigned();
                $table->string('asset_id', 255)->nullable();
                $table->string('name', 255)->nullable();
                $table->string('asset_type', 255)->nullable();
                $table->string('model', 255)->nullable();
                $table->string('make', 255)->nullable();
                $table->string('manu', 255)->nullable();
                $table->string('serial_number', 255)->nullable();
                $table->integer('model_imei')->nullable();
                $table->date('date_purchased')->nullable();
                $table->date('warranty_date')->nullable();
                $table->string('cost', 255)->nullable();
                $table->integer('imei')->nullable();
                $table->string('mobile_type', 255)->nullable();
                $table->string('os', 255)->nullable();
                $table->text('comments')->nullable();
                $table->string('ntm_uid', 255)->nullable();
                $table->string('ntm_pass', 255)->nullable();
                $table->string('ip_address', 255)->nullable();
                $table->string('mac', 255)->nullable();
                $table->string('cad_ip', 255)->nullable();
                $table->string('sim_id', 255)->nullable();
                $table->string('sim_phone', 255)->nullable();
                $table->string('gps_protocol', 255)->nullable();
                $table->string('firmware_ver', 255)->nullable();
                $table->string('radio_id', 255)->nullable();
                $table->string('meid_model_num', 255)->nullable();
                $table->string('meid', 255)->nullable();
                $table->string('phone', 255)->nullable();
                $table->string('multi_tech_sim', 255)->nullable();
                $table->string('mdc_id', 255)->nullable();
                $table->string('mdc_pass', 255)->nullable();
                $table->string('cpu', 255)->nullable();
                $table->string('ram', 255)->nullable();
                $table->string('asset_tag', 255)->nullable();
                $table->boolean('network_status')->nullable();
                $table->string('drop_status', 255)->nullable();
                $table->string('switch_serial', 255)->nullable();
                $table->string('screen_size', 255)->nullable();
                $table->string('ac_adapter', 255)->nullable();
                $table->string('stylus', 255)->nullable();
                $table->string('seid_num', 255)->nullable();
                $table->string('emid', 255)->nullable();
                $table->string('tmv_num', 255)->nullable();
                $table->string('tmv_alias', 255)->nullable();
                $table->string('radio_desc', 255)->nullable();
                $table->string('tier_level', 255)->nullable();
                $table->string('system_alias', 255)->nullable();
                $table->string('system_id', 255)->nullable();
                $table->string('status_id', 255)->nullable();
                $table->string('status', 255)->nullable();
                $table->string('station_id', 255)->nullable();
                $table->string('station_name', 255)->nullable();
                $table->string('vehicle_id', 255)->nullable();
                $table->string('vehicle_name', 255)->nullable();
                $table->string('vendor_id', 255)->nullable();
                $table->string('vendor_name', 255)->nullable();
                $table->string('grant_name', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
            });


	    /**
	     * Table: all_assets
	     */
	    Schema::create('all_assets', function($table) {
                $table->increments('id')->unsigned();
                $table->string('name', 255)->nullable();
                $table->string('asset_type', 255)->nullable();
                $table->string('model', 255)->nullable();
                $table->string('make', 255)->nullable();
                $table->string('manu', 255)->nullable();
                $table->string('serial_number', 255)->nullable();
                $table->integer('model_imei')->nullable();
                $table->date('date_purchased')->nullable();
                $table->date('warranty_date')->nullable();
                $table->string('cost', 255)->nullable();
                $table->integer('imei')->nullable();
                $table->string('mobile_type', 255)->nullable();
                $table->string('os', 255)->nullable();
                $table->text('comments')->nullable();
                $table->string('ntm_uid', 255)->nullable();
                $table->string('ntm_pass', 255)->nullable();
                $table->string('ip_address', 255)->nullable();
                $table->string('mac', 255)->nullable();
                $table->string('cad_ip', 255)->nullable();
                $table->string('sim_id', 255)->nullable();
                $table->string('sim_phone', 255)->nullable();
                $table->string('gps_protocol', 255)->nullable();
                $table->string('firmware_ver', 255)->nullable();
                $table->string('radio_id', 255)->nullable();
                $table->string('meid_model_num', 255)->nullable();
                $table->string('meid', 255)->nullable();
                $table->string('phone', 255)->nullable();
                $table->string('multi_tech_sim', 255)->nullable();
                $table->string('mdc_id', 255)->nullable();
                $table->string('mdc_pass', 255)->nullable();
                $table->string('cpu', 255)->nullable();
                $table->string('ram', 255)->nullable();
                $table->string('asset_tag', 255)->nullable();
                $table->boolean('network_status')->nullable();
                $table->string('drop_status', 255)->nullable();
                $table->string('switch_serial', 255)->nullable();
                $table->string('screen_size', 255)->nullable();
                $table->string('ac_adapter', 255)->nullable();
                $table->string('stylus', 255)->nullable();
                $table->string('seid_num', 255)->nullable();
                $table->string('emid', 255)->nullable();
                $table->string('tmv_num', 255)->nullable();
                $table->string('tmv_alias', 255)->nullable();
                $table->string('radio_desc', 255)->nullable();
                $table->string('tier_level', 255)->nullable();
                $table->string('system_alias', 255)->nullable();
                $table->string('system_id', 255)->nullable();
                $table->string('asset_document', 255)->nullable();
                $table->string('asset_image', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->integer('personnel_id')->nullable()->unsigned();
                $table->integer('status_id')->nullable()->unsigned();
                $table->integer('vehicle_id')->nullable()->unsigned();
                $table->integer('vendor_id')->nullable()->unsigned();
                $table->integer('station_id')->nullable()->unsigned();
                $table->index('all_assets_deleted_at_index');
                $table->index('fk_all_assets_personnel');
                $table->index('fk_all_assets_status');
                $table->index('fk_all_assets_vehicle');
                $table->index('fk_all_assets_vendor');
                $table->index('fk_all_assets_station');
            });


	    /**
	     * Table: asset_grant
	     */
	    Schema::create('asset_grant', function($table) {
                $table->increments('id')->unsigned();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->integer('grant_id')->nullable()->unsigned();
                $table->integer('all_asset_id')->nullable()->unsigned();
                $table->integer('station_id')->nullable()->unsigned();
                $table->integer('vehicle_id')->nullable()->unsigned();
                $table->index('asset_grant_deleted_at_index');
                $table->index('fk_asset_grant_grant');
                $table->index('fk_asset_grant_all_asset');
                $table->index('fk_station_grant_station');
                $table->index('fk_vehicle_grant_vehicle');
            });


	    /**
	     * Table: grants
	     */
	    Schema::create('grants', function($table) {
                $table->increments('id')->unsigned();
                $table->string('grant_name', 255)->nullable();
                $table->date('date_issued')->nullable();
                $table->string('grant_type', 255)->nullable();
                $table->date('date_matures')->nullable();
                $table->decimal('grant_value', 15,2)->nullable();
                $table->text('grant_comments')->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->index('grants_deleted_at_index');
            });


	    /**
	     * Table: password_resets
	     */
	    Schema::create('password_resets', function($table) {
                $table->string('email', 255);
                $table->string('token', 255);
                $table->timestamp('created_at');
                $table->index('password_resets_email_index');
                $table->index('password_resets_token_index');
            });


	    /**
	     * Table: personnels
	     */
	    Schema::create('personnels', function($table) {
                $table->increments('id')->unsigned();
                $table->string('ofd_id', 255)->nullable();
                $table->string('ofd_full_name', 255)->nullable();
                $table->string('ofd_email', 255)->nullable();
                $table->string('ofd_phone', 255)->nullable();
                $table->string('ofd_role', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->index('personnels_deleted_at_index');
            });


	    /**
	     * Table: related_files
	     */
	    Schema::create('related_files', function($table) {
                $table->increments('id')->unsigned();
                $table->string('related_file', 255)->nullable();
                $table->string('related_image', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->integer('station_id')->nullable()->unsigned();
                $table->integer('allasset_id')->nullable()->unsigned();
                $table->integer('vehicle_id')->nullable()->unsigned();
                $table->integer('grant_id')->nullable()->unsigned();
                $table->integer('vendor_id')->nullable()->unsigned();
                $table->index('related_files_deleted_at_index');
                $table->index('fk_station');
                $table->index('fk_allasset');
                $table->index('fk_vehicle_vehicle');
                $table->index('fk_grant');
                $table->index('fk_vendor_vendor');
            });


	    /**
	     * Table: stationhis
	     */
	    Schema::create('stationhis', function($table) {
                $table->increments('id')->unsigned();
                $table->integer('station_id')->nullable();
                $table->string('station_name', 255)->nullable();
                $table->integer('station_number')->nullable();
                $table->string('station_date', 255)->nullable();
                $table->string('address', 255)->nullable();
                $table->string('city', 255)->nullable();
                $table->integer('zipcode')->nullable();
                $table->string('district', 255)->nullable();
                $table->integer('vendor_id')->nullable();
                $table->string('vendor_name', 255)->nullable();
                $table->integer('grant_id')->nullable();
                $table->string('grant_name', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
            });


	    /**
	     * Table: stations
	     */
	    Schema::create('stations', function($table) {
                $table->increments('id')->unsigned();
                $table->string('station_name', 255);
                $table->integer('station_number');
                $table->string('station_date', 255);
                $table->string('address', 255);
                $table->string('city', 255);
                $table->integer('zipcode');
                $table->string('district', 255)->nullable();
                $table->text('station_note')->nullable();
                $table->string('station_document', 255)->nullable();
                $table->string('station_image', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->integer('grant_id')->nullable()->unsigned();
                $table->integer('vendor_id')->nullable()->unsigned();
                $table->index('stations_deleted_at_index');
                $table->index('fk_grant_grant_id_station');
                $table->index('fk_vendor_vendor_id_station');
            });


	    /**
	     * Table: statuses
	     */
	    Schema::create('statuses', function($table) {
                $table->increments('id')->unsigned();
                $table->string('status', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->index('statuses_deleted_at_index');
            });


	    /**
	     * Table: todos
	     */
	    Schema::create('todos', function($table) {
                $table->increments('id')->unsigned();
                $table->string('task', 255)->nullable();
                $table->text('notepad')->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->index('todos_deleted_at_index');
            });


	    /**
	     * Table: types
	     */
	    Schema::create('types', function($table) {
                $table->increments('id')->unsigned();
                $table->string('asst_type', 255);
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->index('types_deleted_at_index');
            });


	    /**
	     * Table: unit_types
	     */
	    Schema::create('unit_types', function($table) {
                $table->increments('id')->unsigned();
                $table->string('name', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->index('unit_types_deleted_at_index');
            });


	    /**
	     * Table: users
	     */
	    Schema::create('users', function($table) {
                $table->increments('id')->unsigned();
                $table->string('name', 255);
                $table->string('username', 50);
                $table->string('email', 255);
                $table->string('password', 255);
                $table->string('remember_token', 100)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->index('users_email_unique');
            });


	    /**
	     * Table: vehiclehis
	     */
	    Schema::create('vehiclehis', function($table) {
                $table->increments('id')->unsigned();
                $table->integer('vehicle_id')->nullable()->unsigned();
                $table->string('vehicle_number', 255)->nullable();
                $table->string('van', 255)->nullable();
                $table->string('make', 255)->nullable();
                $table->string('model', 255)->nullable();
                $table->string('year', 4)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->integer('station_id')->nullable()->unsigned();
                $table->string('name', 255)->nullable();
                $table->integer('status_id')->nullable()->unsigned();
                $table->string('status', 255)->nullable();
                $table->integer('grant_id')->nullable()->unsigned();
                $table->string('grant_name', 255)->nullable();
                $table->integer('unittype_id')->nullable()->unsigned();
                $table->string('unittype_name', 255)->nullable();
                $table->integer('vendor_id')->nullable()->unsigned();
                $table->string('vendor_name', 255)->nullable();
            });


	    /**
	     * Table: vehicles
	     */
	    Schema::create('vehicles', function($table) {
                $table->increments('id')->unsigned();
                $table->string('vehicle_number', 255)->nullable();
                $table->string('van', 255);
                $table->string('make', 255)->nullable();
                $table->string('model', 255)->nullable();
                $table->('year')->nullable();
                $table->text('vehicle_note')->nullable();
                $table->string('vehicle_document', 255)->nullable();
                $table->string('vehicle_image', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->integer('station_id')->nullable()->unsigned();
                $table->integer('status_id')->nullable()->unsigned();
                $table->integer('unittype_id')->nullable()->unsigned();
                $table->integer('vendor_id')->nullable()->unsigned();
                $table->index('vehicles_deleted_at_index');
                $table->index('fk_vehicles_station');
                $table->index('fk_vehicles_status');
                $table->index('fk_vehicles_unittype');
                $table->index('fk_vehicles_vendor');
            });


	    /**
	     * Table: vendors
	     */
	    Schema::create('vendors', function($table) {
                $table->increments('id')->unsigned();
                $table->string('vendor_name', 255)->nullable();
                $table->string('vendor_address', 255)->nullable();
                $table->string('vendor_web', 255)->nullable();
                $table->string('vendor_phone', 255)->nullable();
                $table->string('vendor_fax', 255)->nullable();
                $table->string('vendor_tech_sup', 255)->nullable();
                $table->string('vendor_rep', 255)->nullable();
                $table->string('vendor_rep_phone', 255)->nullable();
                $table->string('vendor_rep_phone_m', 255)->nullable();
                $table->string('vendor_email', 255)->nullable();
                $table->timestamp('created_at')->nullable();
                $table->timestamp('updated_at')->nullable();
                $table->timestamp('deleted_at')->nullable();
                $table->index('vendors_deleted_at_index');
            });


         }

        /**
         * Reverse the migrations.
         *
         * @return void
         */
         public function down()
         {
            
	            Schema::drop('all_assethis');
	            Schema::drop('all_assets');
	            Schema::drop('asset_grant');
	            Schema::drop('grants');
	            Schema::drop('password_resets');
	            Schema::drop('personnels');
	            Schema::drop('related_files');
	            Schema::drop('stationhis');
	            Schema::drop('stations');
	            Schema::drop('statuses');
	            Schema::drop('todos');
	            Schema::drop('types');
	            Schema::drop('unit_types');
	            Schema::drop('users');
	            Schema::drop('vehiclehis');
	            Schema::drop('vehicles');
	            Schema::drop('vendors');
         }

}