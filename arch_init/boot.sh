# clear
echo '----- ASHE Boot Insaller -----'
echo 'Made by Alec Girman'

# First, I'm going to determine which computer I am using.
# Problem is that they both boot into this same ISO so they
# have nearly the smae information.  To solve this, I'm just going to check the
# base specs.  My laptop has 16G and desktop has 32G (maybe 64 soon).
# It is important for me to check which machine because my desktop does NOT
# have to run wifi-setup as it is already connected via ethernet.

# Info read from /proc/meminfo on my desktop looks like this when 32G is active.
# MemTotal:       32825668 kB

# read in the amount of total system memory
cat /proc/meminfo | read _memtotstr

# correctly filters output
# note -o on grep, it makes only matched values print.
set KBMEMTOTAL=$(echo "$_memtotstr" | egrep -o '[0-9]{8}')

# Device detection memory threshold, since laptop is 16g, i'm going to just
# check if its <17g since idk the exact amount of bytes.
local devdetect_mem_threshold=$((17*1024*1024*1024)) #8gb

if [ $KBMEMTOTAL > $devdetect_mem_threshold ]; then
    echo 'ASHE has detected Desktop/Server hardware, will NOT run wifi-setup.'
else
    echo 'ASHE has detected Laptop/Mobile hardware, opening wifi-setup.'
fi
exit

sleep 1
wifi-menu
echo 'wifi-menu exited, assuming success.'
# echo "Return code: $#" TODO
echo 'will sleep for a bit to avoid DNS issues.'
sleep 7
echo 'Performing system update, this will take a bit.'
echo 'If prompted for installation, please confirm (press y)' 

# tmux is for later
# 10/14: added --confirm TODO TODO TODO TEST
pacman -'pacman --color always -Syu base tmux --confirm' 
echo 'System upgrade complete.  Launching core setup in 5s, press Ctrl+C to cancel.'
zsh /root/data/core.sh
