<?php

namespace App\Models;

use App\Models\Trip;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\Translatable\HasTranslations;
class TripBooking extends Model
{
    use HasFactory;
    protected $guarded = [];
}
