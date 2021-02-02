<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserFollowers extends Model
{
    protected $table = 'user_followers';

    protected $fillable = [
        'user_id',
        'follower_id',
    ];

    public $timestamps = True;
}
