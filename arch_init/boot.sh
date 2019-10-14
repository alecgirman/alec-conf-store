clear
echo '----- ASHE Boot Insaller -----'
echo 'Made by Alec Girman'
sleep 1
wifi-menu
echo 'wifi-menu exited, assuming success.'
echo 'will sleep for a bit to avoid DNS issues.'
sleep 7
echo 'now installing packages.'
echo 'if asked, please confirm (press y)'
alias pac='
echo 'Performing system update, this will take a bit.'
pacman -'pacman --color always -Syu base tmux # tmux is for later
echo 'System upgrade complete.  Launching core setup in 5s, press Ctrl+C to cancel.'
zsh /root/data/core.sh
