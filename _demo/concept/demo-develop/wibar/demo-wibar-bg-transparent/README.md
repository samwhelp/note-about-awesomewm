
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

to install deb (Ubuntu 18.04)

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

show

```
request::wallpaper
request::desktop_decoration
```

## Reference

* [https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#border_color](https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#border_color)
* [https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#bg](https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#bg)
* [https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#beautiful.bg_normal](https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#beautiful.bg_normal)
* [https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#beautiful.wibar_bg](https://awesomewm.org/apidoc/popups_and_bars/awful.wibar.html#beautiful.wibar_bg)
* [https://awesomewm.org/apidoc/theme_related_libraries/gears.color.html](https://awesomewm.org/apidoc/theme_related_libraries/gears.color.html)

