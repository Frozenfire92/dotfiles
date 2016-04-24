gource \
    -1280x720 \
    --seconds-per-day 0.5 \
    --camera-mode overview \
    --auto-skip-seconds .5 \
    --stop-at-end \
    --key \
    --hide mouse,progress \
    --file-idle-time 0 \
    --max-files 0 \
    --background-colour 000000 \
    --font-size 22 \
    --title "Affinio/platform" \
    --date-format "%B %d %Y" \
    --output-ppm-stream - \
    --disable-bloom \
    | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -i ~/Downloads/Garden\ Music.mp3 -shortest -vcodec libx264 -crf 21 -bf 2 -flags +cgop -pix_fmt yuv420p -codec:a aac -strict -2 -b:a 384k -r:a 48000 -movflags faststart repo.mp4
