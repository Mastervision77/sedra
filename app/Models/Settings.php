<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

use Illuminate\Validation\ValidationException;
use Filament\Notifications\Notification;

class Settings extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $casts = [
        'social_midea' => 'array',
    ];

}
