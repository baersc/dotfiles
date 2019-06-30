# use UTF-8 everywhere
export LANG=en_US.UTF-8

# specify location of kshrc
export ENV=$HOME/.kshrc

# load Xresources file
xrdb -merge $HOME/.Xresources

# set background color
xsetroot -solid '#002b36'

# lock display after inactivity
xidle &

# xclock *unset LANG due to font bug
LANG= xclock -strftime "%a %e %b %Y %H:%M" &

# add fonts from system
for i in $(ls /usr/local/share/fonts/); do
  if [ -d "/usr/local/share/fonts/$i" ]; then
    xset fp+ "/usr/local/share/fonts/$i"
  fi
done

# add fonts from home directory
for i in $(ls ~/.fonts/); do
  if [ -d "~/.fonts/" ]; then
    xset fp+ "~/.fonts/$i"
  fi
done

# disable system beep
xset b off
xset fp rehash 
fc-cache -v

# ThinkPad middle button scrolling
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# start cwm
cwm

