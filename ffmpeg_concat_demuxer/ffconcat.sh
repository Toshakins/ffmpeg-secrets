#!/bin/bash

set -eux

ffmpeg -hide_banner -f concat -i concat.txt -fps_mode vfr -pix_fmt yuv420p -c:v libx264 output.mp4 -y
ffprobe -hide_banner -show_streams output.mp4 | grep --color "duration="
