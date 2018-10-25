#!/bin/sh

# Screensaver, lockscreen, xrdb, keymap
xset dpms 900 900 900
xset s 540 60
xss-lock -n "notify-send -i dialog-password 'Lockscreen' 'Locking in 60 seconds'" -l slock &
xrdb ~/.Xresources
setxkbmap -layout us
xmodmap -e 'clear Lock'
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'keycode 9 = Caps_Lock'
xmodmap -e 'add Lock = Caps_Lock'
xmodmap -e 'keycode 112 = Left'
xmodmap -e 'keycode 117 = Right'
xsetroot -bg "#282828"
xsetroot -cursor_name left_ptr
xbanish &
dunst &

eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

#SXHKD_SHELL=/usr/bin/bash sxhkd &
#exec bspwm & wmpid=$!
#exec 2bwm & wmpid=$!
exec dwm & wmpid=$!

compton --backend glx --paint-on-overlay --vsync opengl --glx-no-stencil --glx-no-rebind-pixmap --glx-swap-method undefined --sw-opti &

autorandr --change
#~/bin/poly.sh
~/bin/statusline

#stalonetray &
nm-applet &
keepassxc &
flameshot &
hipchat &
flatpak run org.nextcloud.Nextcloud &
st &

wait $wmpid
