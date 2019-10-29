local vimscript="let @a=localtime()\nput a\nw /tmp/ashttime.txt\nq"
printf $vimscript | vim -E -v -c $vimscript
echo "$(ltime) % 60" | bc
