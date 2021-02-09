<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Form extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $table = 'forms';

    public function applications()
    {
        return $this->hasMany(\App\Models\Application::class, 'form_id');
    }
}
