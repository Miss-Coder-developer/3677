<?php

namespace App\Http\Controllers\Post;
//namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
//use App\Http\Requests\Post\StorePostComment;
//use App\Http\Requests\Post\UpdatePostComment;
use App\Http\Requests\StorePostCommentRequest;
use App\Models\Post;
use App\Models\PostComment;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PostCommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return PostComment[]|Collection
     */
    public function index()
    {
        return PostComment::orderBy('created_at','desc')
               ->paginate(15);
    }

    /**
     * Store a newly created resource in storage.
     * @param StorePostCommentRequest $request
     * @return JsonResponse
     */
    public function store(Request $request, $id)
    {
//        dd($request->all());
        try {
            // Create Post comment
            $request['user_id'] = 1;
            $request['post_id'] =  $id;
            PostComment::create($request->all());

            // Success response
            $response = [
                'success' => true,
                'message' => 'Comment created successfully :)'
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
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param UpdatePostComment $request
     * @param $id
     * @return JsonResponse
     */
    public function update(UpdatePostComment $request, $id)
    {

        try {
            // Find comment by id
            $postComment = PostComment::findorFail($id);
            $postComment->update($request->validated());

            // Success response
            $response = [
                'success' => true,
                'message' => 'Comment updated successfully :)'
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
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {}

    public function reply(Request $request, PostComment $post, $post_id, $parent_id){
//        dd($parent_id);
        $request['post_id'] = $post_id;
        $request['user_id'] = 1;
        $request['parent_id'] = $parent_id;
        PostComment::create($request->all());
    }
}
