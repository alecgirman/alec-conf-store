#!/usr/bin/zsh

rm -rf /root
ln -s /fd/root /root
# ln -s /fd/cache/pacman /var/cache/pacman/pkg
printf "\x1b[1;32m%s\n\x1b[0m" 'Symlinks to root and cache were made'
