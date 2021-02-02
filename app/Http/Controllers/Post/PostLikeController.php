<?php

namespace App\Http\Controllers\Api\Post;

use App\Http\Controllers\Controller;
use App\Http\Requests\Post\Like;
use App\Models\PostLike;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class PostLikeController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param Like $request
     * @return JsonResponse
     */
    public function store(Like $request)
    {
        try {
            $data = $request->validated();
            $data['user_id'] = auth()->user()->id;
            PostLike::create($data);
            $response = [
                'success' => true,
                'message' => 'Post liked'
            ];
        } catch (\Exception $exception) {
            $response = [
                'success' => false,
                'message' => $exception->getMessage()
            ];
        }
        return response()->json($response);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return JsonResponse
     */
    public function destroy($id)
    {
        try {
            PostLike::where('post_id', $id)->where('user_id', auth()->user()->id)->delete();
            $response = [
                'success' => true,
                'message' => 'Post\'s like deleted'
            ];
        } catch (\Exception $exception) {
            $response = [
                'success' => false,
                'message' => $exception->getMessage()
            ];
        }
        return response()->json($response);
    }
}
