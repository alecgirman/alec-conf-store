let agquery='[p|P]ercentage:\s+\K[\d.]+' 
r !upower -d | ag -o l:agquery


