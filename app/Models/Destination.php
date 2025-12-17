<?php

namespace App\Models;

use App\Traits\HasWebpImage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Destination extends Model
{
    use HasFactory;
    use HasWebpImage;

    protected $guarded = [];
    protected $casts = [
        'gallaryimages' => 'array',
    ];

    public function Packages()
    {
        return $this->hasMany(Package::class);
    }
}
