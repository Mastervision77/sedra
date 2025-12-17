<?php

namespace App\Models;

use App\Traits\HasWebpImage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Package extends Model
{
    use HasFactory;
    use HasWebpImage;


    protected $guarded = [];
    protected $casts = [
        'itinerary' => 'array',
        'includes' => 'array',
        'notincludes' => 'array',
        'pricing' => 'array',
        'pricing' => 'array',
        'payterms' => 'array',
        'gallary' => 'array',
    ];

    public function destination()
    {
        return $this->belongsTo(Destination::class);
    }
}
