<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserFollowers;
use Illuminate\Http\Request;

class FollowersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)

    {
        try {
            $data = $request->only('user_id');
            $data['follower_id'] = $request->follower_id;
//            $data['follower_id'] = auth()->user()->id;

            UserFollowers::create($data);
            $response = [
                'success' => true,
                'message' => 'Follower created',
            ];
        }catch (\Exception $exception){
//          dd($data['follower_id']);
//          dd($data);
            $response = [
                'success' => false,
                'message' => $exception->getMessage(),
            ];
        }

        return  response()->json($response);

    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
//      dd($id);
      UserFollowers::where('follower_id', $id)->delete();
      return UserFollowers::all();
    }
}
