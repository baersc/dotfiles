# Set X font paths
xset fp+ /usr/local/share/fonts/artwiz-alezapka/lime.pcf

# Make the X server reread the font database from paths set above
xset fp rehash

xrdb -merge $HOME/.Xresources
