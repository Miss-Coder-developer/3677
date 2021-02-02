<?php

namespace App\Models;

use App\Http\Controllers\Traits\FileUploadMachineTrait;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use Sluggable;

    protected $table = 'posts';

    protected $fillable = [
        'user_id',
        'title',
        'description',
        'photo',
        'image',
        'audio',
        'video'
    ];

    /**
     * Return the sluggable configuration array for this model.
     *
     * @return array
     */
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

//    public function comments()
//    {
//        return $this->hasMany(PostComment::class,'post_id','id')
//                    ->where('status',true);
//    }

    /**
     * The post likes that belong to the user.
     */
    // public function likes()
    // {
    //     return $this->belongsToMany(PostLike::class,
    //         'post_likes',
    //         'post_id',
    //         'user_id',
    //         'id');
    // }

    public function likes(){
        return $this->belongsTo(PostLike::class, 'id', 'post_id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function comments(){
        return $this->hasMany(Comment::class, 'post_id')->latest()->whereNull('parent_id');
    }

    public static function upload($request){
        $data = FileUploadMachineTrait::uploadFiles($request);
        self::create($data);
    }
}
