<?php

namespace App\Models;

use App\Traits\HasWebpImage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Review extends Model
{
    use HasFactory;
    use HasWebpImage;
    protected $guarded = [];
   
}
