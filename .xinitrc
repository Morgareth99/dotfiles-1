#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Mpd autostart   
 [ !  -s ~/.config/mpd/pid ] && mpd

#Update Xresources 
#xrdb -merge ~/.Xresources 
[[ -f ~/.Xresources ]] && xrdb -merge "${HOME}/.Xresources"
xsetroot -cursor_name left_ptr
xset +fp ~/.fonts
xset +fp /usr/share/fonts/local 
xset fp rehash

           

# Auto mounts USB to /media/
#udiskie &

#Iniciar o i3wm  
#exec i3

sxhkd & 
bspwm exec
 

