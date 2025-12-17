<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class CategoryBlog extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function blogs()
    {
        return $this->hasMany(Blog::class);
    }
}
