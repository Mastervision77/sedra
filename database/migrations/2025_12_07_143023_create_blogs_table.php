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
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('categoryblog_id')->constrained('category_blogs')->onDelete('cascade');
            $table->string('title')->nullable();
            $table->string('slug')->unique();
            $table->string('subtitle')->nullable();
            $table->string('author')->nullable();
            $table->date('date')->nullable();
            $table->text('content')->nullable();
            $table->text('innerimage')->nullable();
            $table->text('outerimage')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('blogs');
    }
};
