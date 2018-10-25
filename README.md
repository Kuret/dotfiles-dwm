# Dotfiles

This repo contains my dotfiles for a Void install and development (primarily Elixir)

# Apps to install and setup

- WM: Kuret/suckless-kuret/dwm
- Compositor: compton
- Themes: gnome-themes-standard + lxappearance
- Notifications: dunst
- Resolution/Monitors: randr + autorandr
- Backlight: acpilight
- Lock: Kuret/suckless-kuret/slock + xss-lock
- Terminal: Kuret/suckless-kuret/st
- Shell: Fish
- Editor: Kakoune
- Browser: qutebrowser (+firefox/chromium for development)
- Image Viewer: feh
- File Manager: ranger (+pcmanfm)
- Password Manager: KeePassXC
- Keyring: gnome-keyring
- Music: Clay (cli gmusic client)
- Cloud: Keybase+kbfs and NextCloud
- Audio: pulseaudio

- gpm+libinput
- curl+wget
- xorg-fonts
- xsetroot
- xrdb
- xmodmap
- xbanish
- vlc/libvlc
- ls_extended
- ScreenKey
- Remmina

# Development/Building

- make/automake/autoconf
- readline-devel
- ncurses-devel
- libressl-devel
- libyaml-devel
- libxslt-devel
- libffi-devel
- libtool
- unixodbc-devel
- unzip
- jshon+jansson-devel
- inotify/libnotify
- xdg-utils
- python-keybinder
- python3-gobject
- python3-dbus
- go/gocode/gogetdoc/goimports

- HipChat
- postgresql(client/server/contrib)
- ImageMagick

```
asdf install erlang/elixir/nodejs
```

# Postgres setup

```
sudo -u postgres -i
initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'
createuser --interactive
createdb <username>
```

# Symlinking scripts

The scripts require root and will ask for the root password by itself, **don't start the script as root, use your normal user**

