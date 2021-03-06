<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stations', function (Blueprint $table) {
            $table->engine = 'InnoDB';
		    $table->increments('id');
            $table->string('station_name');
	        $table->integer('station_number');
	        $table->string('station_date');

            $table->string('address');
	        $table->string('city');
            $table->integer('zipcode');
	        $table->string('district')->nullable();
            $table->text('station_note')->nullable();
            $table->string('station_document')->nullable();
            $table->string('station_image')->nullable();
            
            $table->timestamps();
            $table->softDeletes();

            $table->index(['deleted_at']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stations');
    }
}
