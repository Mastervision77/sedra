<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('packages', function (Blueprint $table) {
            $table->id();
            $table->foreignId('destination_id')->constrained()->onDelete('cascade');
            $table->string('title')->nullable();
            $table->string('slug')->unique();
            $table->text('subtitle')->nullable();
            $table->string('price')->nullable();

            $table->string('duration')->nullable();
            $table->string('people_number')->nullable();
            $table->text('overview')->nullable();
            $table->text('itinerary')->nullable();
            $table->text('includes')->nullable();
            $table->text('notincludes')->nullable();
            $table->text('pricing')->nullable();
            $table->text('payterm')->nullable();
            $table->text('payterms')->nullable();

            $table->string('outerimage')->nullable();
            $table->string('innerimage')->nullable();
            $table->text('gallary')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('packages');
    }
};
