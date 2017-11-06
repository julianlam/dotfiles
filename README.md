# Julian's dotfiles

Some dotfiles exists here.

## Run after initial setup
  * Install xorg-xserver-input-libinput -- this uninstalls synaptics, but synaptics sucks anyway.
  * Add to /usr/share/X11/xorg.conf.d/90-libinput.conf
    * `Option "Tapping" "1"` and `Option "NaturalScrolling" "1"`

**Increase file watch limit (for dropbox and grunt)**

``` bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

**npm config prefix to local directory** |
[More information](https://docs.npmjs.com/getting-started/fixing-npm-permissions#option-2-change-npms-default-directory-to-another-directory)

``` bash
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
```

**Allow execution of binaries installed "globally" by npm**

``` bash
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p`
```

# Reboot!
