
# demo-config-awesome-github-master


## Link

* https://github.com/samwhelp/play-ubuntu-20.04-plan/tree/master/prototype/awesome/config/awesome/start

## Spec

* [keybind](spec-keybind.md)
* [mousebind](spec-mousebind.md)

## Tool

* [run-awesome-on-xephyr](../../../../concept/xephyr/develop-tool/run-awesome-on-xephyr/)



## Prepare

### Install awesome

to install [Package: [build-essential](https://packages.ubuntu.com/bionic/build-essential)]

``` sh
sudo apt-get install build-essential
```

to install build-dep package for compile awesome.

``` sh
sudo apt build-dep awesome
```

to install build-dep package for compile awesome. (libxcb-xfixes0-dev not on [Source Package: [awesome](https://packages.ubuntu.com/source/focal/awesome)])

``` sh
sudo apt install libxcb-xfixes0-dev
```

to clone awesome from github

``` sh
git clone https://github.com/awesomeWM/awesome.git
```

to build

```
cd awesome
make
```

to build package

```
make package
```

to install deb (Ubuntu 20.04)

``` sh
sudo dpkg -i build/*.deb
```

to install xsession desktop entry

```sh
sudo install -m 644 /usr/local/share/xsessions/awesome.desktop /usr/share/xsessions/awesome.desktop
```

### Install xserver-xephyr

to install [Package: [xserver-xephyr](https://packages.ubuntu.com/bionic/xserver-xephyr)].

``` sh
sudo apt-get install xserver-xephyr
```

## Start Test

run

``` sh
bin/dev.sh
```


## Reference

* [Lua 5.3 Reference Manual](https://www.lua.org/manual/5.3/) / [6 – Standard Libraries](https://www.lua.org/manual/5.3/manual.html#6) / [6.3 – Modules](https://www.lua.org/manual/5.3/manual.html#6.3)
* [/usr/local/etc/xdg/awesome/rc.lua](https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua)
* [https://github.com/awesomeWM/awesome#building-and-installation](https://github.com/awesomeWM/awesome#building-and-installation)
* [https://github.com/awesomeWM/awesome#debian-based](https://github.com/awesomeWM/awesome#debian-based)

## Find themes

run

``` sh
ls /usr/local/share/awesome/themes/ -1
```

show

```
default
gtk
sky
xresources
zenburn
```

## Version

run

``` sh
awesome -v
```

show

```
awesome v4.3-850-g9781f14b (Too long)
 • Compiled against Lua 5.3.3 (running with Lua 5.3)
 • API level: 4
 • D-Bus support: yes
 • xcb-errors support: no
 • execinfo support: yes
 • xcb-randr version: 1.6
 • LGI version: 0.9.2
 • Transparency enabled: yes
 • Custom search paths: no
```
