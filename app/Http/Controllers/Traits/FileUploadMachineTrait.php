<?php

namespace App\Http\Controllers\Traits;

trait FileUploadMachineTrait {
    private static $IMAGE = '';
    private static $AUDIO = '';
    private static $VIDEO = '';

    public static function uploadFiles($request) {
        $data = $request->all();

        if($request->hasFile('image')){
            foreach($request->image as $image_item) {
                $filename = trim(time() . 'image-' . $image_item->getClientOriginalName());
                $location = public_path('images');
                self::$IMAGE .= $filename.'/';
                $image_item->move($location, $filename);
                $data['image'] = substr(self::$IMAGE, 0, -1);
            }
        }

        if($request->hasFile('audio')){
            foreach($request->audio as $audio_item) {
                $filename = trim(time() . 'audio-' . $audio_item->getClientOriginalName());
                $location = public_path('audio');
                self::$AUDIO .= $filename.'/';
                $audio_item->move($location, $filename);
                $data['audio'] = substr(self::$AUDIO, 0, -1);
            }
        }

        if($request->hasFile('video')){
            foreach($request->video as $video_item) {
                $filename = trim(time() . 'video-' . $video_item->getClientOriginalName());
                $location = public_path('video');
                self::$VIDEO .= $filename.'/';
                $video_item->move($location, $filename);
                $data['video'] = substr(self::$VIDEO, 0, -1);
            }
        }

        return $data;
    }
}
