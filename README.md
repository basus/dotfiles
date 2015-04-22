# Dotfiles

This is a collection of some of my configuration files. These aren't the only
ones I rely on, and not necessarily perfectly up-to-date, they're just the ones
I've sanitized for public use.

In alphabetical order:

## fonts.conf
This is an XML file for tweaking font configuration on Linux
systems. Essentially it replaces some common proprietary fonts (Helvetica,
Arial, Verdana, Calibri, Cambria) with alternatives from Google's freely
available [Noto fonts](https://www.google.com/get/noto/). Place this at
`~/.fonts.conf`. I'm currently using this on Arch Linux. I think modern Ubuntu
comes with similar font settings by default. This follows [a tutorial about
getting gorgeous fonts on Ubuntu](http://www.binarytides.com/gorgeous-looking-fonts-ubuntu-linux/).

## git-alias
Shell (bash or zsh) aliases for common git commands I use.

## git-ignore
Tell git to ignore a bunch of files, mostly ones created as compilation
artifacts.

## tmux.conf
Configuration file for the
[tmux terminal multiplexer](http://tmux.sourceforge.net/). This configuration
mainly provides a [Powerline](https://github.com/powerline/powerline)-like bar
at the bottom of the screen for showing terminal information. Put this at `~/.tmux.conf`.

## xbindkeys
Configuration file for the
[xbindkeys](https://wiki.archlinux.org/index.php/Xbindkeys) program that maps
(some of) the function keys on my ThinkPad t440s to appropriate commands. Put
this at `~/.xbindkeysrc`.

## xfce4-terminal
My Xfce4 terminal configuration. The color scheme is based on the
[base16 Twilight Dark](https://github.com/chriskempson/base16-shell) color
scheme. Put this at `~/.config/xfce4/terminal/terminalrc`.

## xinitrc
Controls the startup of my X window session. Launches a few utilities
(screensaver, keybindings) and then my current window manager of choice. Put
this at `~/.xinitrc`.

## xmobarrc
Configuration for the
[Xmobar status bar](http://projects.haskell.org/xmobar/). Shows usage stats for
memory, CPU and network, as well as time and battery status. Put this at
`~/.xmobarrc`.

## xmodmap
Interchange the Caps Lock and left Control key. Mostly useful for emacs
users. Use with the `xmodmap` program.

## xmonad.hs
Configuration file for the
[Xmonad tiling window manager](http://xmonad.org/). Mostly places xmobar, binds
keys and specifies [dmenu](http://tools.suckless.org/dmenu/) as the application
launcher. Put this at `~/.xmonad/xmonad.hs`.

## xresources
Mostly settings for the [Urxvt](http://en.wikipedia.org/wiki/Rxvt-unicode)
terminal emulator. Put this at `~/.Xresources`.

## zsh-theme
My Zsh prompt. Shows basic user and host info as well as Git repo info. I use this with
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), so this goes at
`~/.oh-my-zsh/themes/custom.zsh-theme` (or choose your preferred name) and set
your `ZSH_THEME` accordingly. 

