export PATH=$PATH:/home/tiago/.config/bspwm/panel/  

#Silent startx
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
