<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Data extends Model
{
    public $timestamps = false;
    
    protected $table = 'data';

    protected $fillable = [
        'currency_id',
        'name',
        'english_name',
        'char_code',
        'num_code',
        'value'
    ];
}
