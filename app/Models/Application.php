<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Application extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'applications';

    public function form()
    {
        return $this->belongsTo(\App\Models\Form::class);
    }
}
