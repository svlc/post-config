post-configuration
==================

system
------

* useradd -m -g GROUP -s /bin/bash USER; passwd USER

packages
--------
* bash-completion emacs-nox emacs-lua-mode sudo pm-utils git openssh
* wget gcc make gdb valgrind patch acpi markdown unzip unrar linux_logo slock
* wpa_supplicant
* firefox flashplugin kdebase-konqueror kwallet alsa-utils
* krusader kdebase-dolphin kdegraphics-gwenview evince kdebase-konsole
* vlc mplayer gimp libreoffice
* freerapid

file-configuration
------------------
### /etc/fstab
UUID=E0B6-32CE /home/USER/media/king vfat rw,noatime,utf8=true 0 2<br/>
UUID=3330-3138 /home/USER/media/gallaxy vfat rw,noatime,utf8=true 0 2

### /etc/sudoers
EDITOR=emacs visudo

programs
--------
### firefox
#### preferences
* about:blank
* download path
* save tabs when exiting
* browser.tabs.animate:false
* keyword.enabled:false
* browser.search.suggest.enabled:false
* browser.backspace_action:0

#### plugins
* betterprivacy, facebook disconnect, firesizer, flashblock,
google/yandex search link fix, screengrab, superstop
* Youtube Video and Audio Downloader
* redirector ([settings](figures/redirector))
* url alias ([settings](figures/url_alias))

### git
* git config --global core.editor emacs
* git config --global alias.st status

### awesome
#### tips
* see [page](http://awesome.naquadah.org/wiki/Awesome_3_configuration) on basic terminology
* xorg-xev is used for recognizing a names of special keys (e.g. Fn keys)
* "Mod1" is id for Alt key

#### rc.lua v3.5.2 changes ([patch](figures/awesome_patch))
* display tab of a new window at last position in taskbar
* limit number of tags
* maximize client (modkey + "`")
* show desktop (modkey + "d")
* deactive window, excluding it from cycling (modkey + "m")
* active window switching (modkey + {"Left","Right"})
* active window shifting (modkey + "Shift" + {"Left","Right"})
* kill focused client (modkey + "q")
* sound shortcuts ("Ctrl" + {"Prior", "Next"} to call  "amixer set Master 10%{+,-}")
* terminal shortcut ("Ctrl" + "Mod1" + "t")
* lock shorcut ("Ctrl" + "Mod1" + "l")
* keyboard switching shortcut ("Ctrl" + "Mod1" + "k")
* add wallpaper support
* delete code for various mouse operations ({window, tab, layout} switching)