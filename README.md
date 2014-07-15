post-configuration
==================

system
------

* useradd -m -g GROUP -s /bin/bash USER; passwd USER

packages
--------
* bash-completion emacs-nox emacs-lua-mode sudo pm-utils git openssh bc
* wget gcc make gdb valgrind patch acpi markdown unzip unrar linux_logo slock
* wpa_supplicant
* firefox flashplugin kdebase-konqueror kwallet alsa-utils kwriteconfig
* krusader kdebase-dolphin kdegraphics-gwenview evince kdebase-konsole kdegraphics-ksnapshot
* vlc mplayer gimp libreoffice
* freerapid

file-configuration
------------------
### /etc/fstab
* UUID= /home/USER/media/king vfat rw,noatime,utf8=true 0 2
* UUID= /home/USER/media/gallaxy vfat rw,noatime,utf8=true 0 2

### /etc/sudoers
EDITOR=emacs visudo

### .bashrc
* alias ls='ls --color=auto'
* alias lla='ls -al'
* alias wpa='sudo wpa\_supplicant -D driver -i interface_name 
  -c wpa\_supplicant.conf' ([config example](figures/wpa\_supplicant.conf))
* alias ema='emacs -nw'
* alias gdb='gdb -quiet'
* alias diff='diff -u'
* alias cp='cp -v --preserve=all'
* alias sus='sudo pm-suspend && amixer set Master 0%
  && linux_logo -L classic-simp -p -o 6 && slock'
* alias tt='konsole --workdir "${PWD}"'
* export PATH=$PATH:~/bin:

### /etc/X11/xorg.conf.d/50-synaptics.conf
* Option "EmulateTwoFingerMinZ" "40"
* Option "EmulateTwoFingerMinW" "8"
* Option "TapButton2" "3"
* Option "HorizTwoFingerScroll" "1"

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
* full-screen-api.approval-required:false

#### plugins
* betterprivacy, facebook disconnect, firesizer, flashblock,
google/yandex search link fix, screengrab, superstop
* Youtube Video and Audio Downloader
* redirector ([settings](figures/redirector))
* url alias ([settings](figures/url_alias))

### konsole
* kwriteconfig --file konsolerc --group KonsoleWindow --key ShowMenuBarByDefault False
* kwriteconfig --file konsolerc --group TabBar --key TabBarVisibility ShowTabBarWhenNeedde

### krusader
#### tips
* it would be very tedious to configure a "krusaderrc" file using kwriteconfig
* change in the size of icons becomes evident after opening a new tab
* it is wise to edit configuration files only while krusader is not running
* krusaderui.rc gets generated as soon as some shortcut is changed
* see the [article](http://www.techrepublic.com/blog/linux-and-open-source/10-reasons-why-you-should-try-krusader/)
describing some special features

#### configuration files
* [krusaderrc](figures/krusaderrc) -- can be copied as a whole
* [krusaderui.rc snippet](figures/krusaderui.rc_snippet) -- must be added
  to some existing (possibly default) krusaderui.rc file

### git
* git config --global core.editor emacs
* git config --global alias.st status
* git config --global user.name ""
* git config --global user.email ""
* git config --global merge.tool ""

### gdb
* [.gdbinit](figures/.gdbinit)

### awesome
#### tips
* see [page](http://awesome.naquadah.org/wiki/Awesome_3_configuration) on basic terminology and
  [the documentation page](https://awesome.naquadah.org/doc/)
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
* keyboard switching shortcut ("Ctrl" + "Mod1" + "k"), possibly with xmodmap command call
* add wallpaper support
* delete code for various mouse operations ({window, tab, layout} switching)
* delete all layouts but the "max" one