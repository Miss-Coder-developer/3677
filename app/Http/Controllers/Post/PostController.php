<?php

namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
use App\Http\Requests\PostRequest;
use App\Models\Post;
use App\Models\PostLike;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PostController extends Controller
{
    private $photoDir = '/post';

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        $post = Post::where('status', true)
            ->orderBy('created_at', 'desc')
            ->get();

        return response()->json($post);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param PostRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
      $validated = $request->all();
      if ($request->hasFile('photo')) {
        $image_path = $request->photo;
        $filename = $image_path->getClientOriginalName();
        $location = public_path('post');
        $image_path->move($location, $filename);
        $validated['photo'] = $filename;
      }
        try {

            // Create new post
            Post::create($validated);
            // Success response
            $response = [
                'success' => true,
                'message' => 'Post created successfully :)'
            ];
        } catch (\Exception $exception) {
            // Exception response
            $response['success'] = false;
            $response['message'] = $exception->getMessage();
        }

        return response()->json($response);

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return Response
     */
    public function show($id)
    {
      $post = Post::where('id',$id)->first();
      return response()->json($post);
//            ->load('comments','comments.user');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $updatePost
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $updatePost, $id)
    {
        // dd($updatePost->title);
        // Validated data
        $validated = $updatePost->all();

        // // Find by id
        // $post = auth()->user()->posts->where('id',$id)->first();
        $post = Post::find($id);
        // dd($post);
        $post->title = $updatePost->title;
        $post->description = $updatePost->description;
        $post->status = $updatePost->status;
        // Unlink old photo if exist new photo
        if ($post['photo']){
            $oldPhoto = public_path('/post/'.$post->photo);
            if (file_exists($oldPhoto))
            {
                unlink($oldPhoto);
            }
            // $validated['photo'] = $validated['photo']->store("{$this->photoDir}", 'post');
            $image_path = $validated->photo;
            $filename = $image_path->getClientOriginalName();
            $location = public_path('post');
            $image_path->move($location, $filename);
            $validated['photo'] = $filename;
        }

        try {
            // Update existing post
            $post->update($validated);

            // Success response
            $response = [
                'success' => true,
                'message' => 'Post Updated successfully :)'
            ];
        } catch (\Exception $exception) {
            // Exception response
            $response['success'] = false;
            $response['message'] = $exception->getMessage();
        }

        return response()->json($response);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return Response
     */
    public function destroy($id)
    {
        Post::where('id',$id)->delete();
    }

    public function likepost(Request $request){
        
        $post_id = $request->post_id;
        $isLike = $request->isLike === 'true';
        $update = false;
        $post = Post::find($post_id);
        // dd(!$post);
        if(!$post){
            return null;
        }

         $user = new User();
//        dd($user->id);
        $like = $user->likes()->where('post_id', $post_id)->first();
        if($like){
            $already_like = $like->isLike;

            $update = true;
            if($already_like == $isLike){
                $like->delete();
                return null;
            }

        }else{
            $like = new PostLike;
        }

        $like->isLike = $isLike;
        $like->user_id = 1;
        $like->post_id = $post->id;
        
        if($update){
            $like->update();
        }
        else{
            $like->save();
        }
        return null;
    }
}

