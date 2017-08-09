# Julian's dotfiles

Some dotfiles exists here.

## Run after initial setup

**Disable second touchpad driver** |
So `synclient` works

Add to bottom of `/usr/share/X11/xorg.conf.d/51-synaptics-quirks.conf`

```
# Disable generic Synaptics device, as we're using
# "DLL0704:01 06CB:76AE Touchpad"
# Having multiple touchpad devices running confuses syndaemon
Section "InputClass"
        Identifier "SynPS/2 Synaptics TouchPad"
        MatchProduct "SynPS/2 Synaptics TouchPad"
        MatchIsTouchpad "on"
        MatchOS "Linux"
        MatchDevicePath "/dev/input/event*"
        Option "Ignore" "on"
EndSection
```

Add under `Identifier "touchpad catchall"

```
        Option  "VertScrollDelta" "-27"
        Option  "PalmDetect" "1"
```

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