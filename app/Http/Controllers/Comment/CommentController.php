<?php

namespace App\Http\Controllers\Comment;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function store(Request $request, Post $post, $id){
        $post->comments()->create([
            'post_id' => $id,
            'comment' => $request->comment,
        ]);
    }
}
