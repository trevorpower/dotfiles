#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && -merge ~/.Xresources

sh ~/.fehbg &

# exec gnome-session
# exec startkde
# exec startxfce4
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr
exec ck-launch-session xmonad
