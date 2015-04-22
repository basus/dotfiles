xrdb -merge ~/.Xresources
feh --bg-fill ~/wallpapers/arch-corner-1920x1080.png
xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock &
xmodmap ~/.xmodmap
xbindkeys

# I tend to switch between XMonad and Xfce4 every month or so
# exec xmonad
exec startxfce4
