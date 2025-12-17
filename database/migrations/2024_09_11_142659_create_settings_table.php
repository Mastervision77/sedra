<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->string('sitename')->nullable();
            $table->text('logo')->nullable();
            $table->text('footerlogo')->nullable();
            $table->text('favicon')->nullable();
            $table->text('descriptionfooter')->nullable();
            $table->text('social_midea')->nullable();
            $table->text('mail')->nullable();
            $table->text('phone')->nullable();


            $table->text('title_contactus_in_home')->nullable();
            $table->text('sub_title_contact_in_home')->nullable();
            $table->text('title_media_center_home')->nullable();
            $table->text('sub_title_media_center_home')->nullable();

            $table->text('title_faq_home')->nullable();
            
            $table->text('sub_title_faq_home')->nullable();
            $table->text('title_reviews_home')->nullable();
            $table->text('sub_title_reviews_home')->nullable();
            $table->text('title_destination_home')->nullable();
            $table->text('sub_title_destination_home')->nullable();
            $table->text('title_destination_page')->nullable();
            $table->text('sub_title_destination_page')->nullable();
            $table->text('title_packages_home')->nullable();
            $table->text('sub_title_packages_home')->nullable();
            $table->text('title_packages_page')->nullable();
            $table->text('sub_title_packages_page')->nullable();
            $table->text('title_sticky_destination_page')->nullable();
            $table->text('sub_title_sticky_destination_page')->nullable();
            $table->text('title_blog_page')->nullable();
            $table->text('sub_title_blog_page')->nullable();



            $table->timestamps();
        });
    }


    public function down(): void
    {
        Schema::dropIfExists('settings');
    }
};
