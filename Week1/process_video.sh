#!/bin/bash

#Task 1
ffmpeg -i Video.webm  -ss 00:00:05 -t 00:01:00 -r 30 frames/seq_%04d.png

ffmpeg -ss 00:00:05 -i Video.webm -t 00:01:00 -r 24 frames/seq_%04d.png

#Task 2
ffmpeg -ss 00:00:05 -t 00:01:00 -i Video.webm -vf "fps=30" frames/seq_%04d.png

ffmpeg -framerate 30 -i frames/seq_%04d.png -c:v h264_videotoolbox -b:v 5000k -pix_fmt yuv420p output_30fps.mp4

#Since the size of the earlier video was too large
ffmpeg -framerate 30 -i frames/seq_%04d.png -c:v h264_videotoolbox -b:v 1200k -pix_fmt yuv420p output_discord.mp4

#Task 3
#Adding the audio to the video from the video made in Task 2
ffmpeg -i Output1.mp4 -i aud1.mp3 -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 -shortest final_video.mp4