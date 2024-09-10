#!/bin/bash

set -eux

rm -frd ./tmp
mkdir -p ./tmp
ffmpeg -i output.mp4 -vf "drawtext=fontfile=arialbd.ttf:fontsize=24:fontcolor=white:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-tw)/2:y=h-th-10:text='%{pts\:hms}'" -vsync 0 ./tmp/output_frame_%d.png
