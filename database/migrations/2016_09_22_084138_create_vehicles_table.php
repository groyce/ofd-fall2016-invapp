<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVehiclesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vehicles', function (Blueprint $table) {
            $table->engine = 'InnoDB';
			$table->increments('id');
            $table->string('vehicle_number')->nullable();
            $table->string('van');
            $table->string('make')->nullable();
            $table->string('model')->nullable();
            $table->date('year', 4)->nullable();
            $table->text('vehicle_note')->nullable();
            $table->string('vehicle_document')->nullable();
            $table->string('vehicle_image')->nullable();

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
        Schema::dropIfExists('vehicles');
    }
}
