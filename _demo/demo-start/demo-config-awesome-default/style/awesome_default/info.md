
## env

* xubuntu 20.04


## version

run

``` sh
$ awesome -v
```

show

```
awesome v4.3 (Too long)
 • Compiled against Lua 5.3.3 (running with Lua 5.3)
 • D-Bus support: ✔
 • execinfo support: ✔
 • xcb-randr version: 1.6
 • LGI version: 0.9.2
```


## Package Info


to show [Package: [awesome](https://packages.ubuntu.com/focal/awesome)] info.

``` sh
$ apt-cache show awesome
```

show

```
Package: awesome
Architecture: amd64
Version: 4.3-4
Priority: optional
Section: universe/x11
Origin: Ubuntu
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Original-Maintainer: Reiner Herrmann <reiner@reiner-h.de>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 2915
Provides: notification-daemon, x-window-manager
Depends: default-dbus-session-bus | dbus-session-bus, gir1.2-freedesktop, gir1.2-gdkpixbuf-2.0, gir1.2-glib-2.0, gir1.2-pango-1.0, libcairo-gobject2, lua-lgi (>= 0.9.2), menu, libc6 (>= 2.14), libcairo2 (>= 1.12.0), libdbus-1-3 (>= 1.9.14), libgdk-pixbuf2.0-0 (>= 2.22.0), libglib2.0-0 (>= 2.30.0), liblua5.3-0, libstartup-notification0 (>= 0.10), libx11-6, libxcb-cursor0 (>= 0.0.99), libxcb-icccm4 (>= 0.4.1), libxcb-keysyms1 (>= 0.4.0), libxcb-randr0 (>= 1.12), libxcb-shape0, libxcb-util1 (>= 0.4.0), libxcb-xinerama0, libxcb-xkb1, libxcb-xrm0 (>= 0.0.0), libxcb-xtest0, libxcb1 (>= 1.6), libxdg-basedir1, libxkbcommon-x11-0 (>= 0.5.0), libxkbcommon0 (>= 0.5.0)
Recommends: feh, rlwrap, x11-xserver-utils, awesome-extra, gir1.2-gtk-3.0
Suggests: awesome-doc
Filename: pool/universe/a/awesome/awesome_4.3-4_amd64.deb
Size: 944372
MD5sum: 71632584a62977fa1705b0bbe31de19e
SHA1: d41b2995beb030d7bb2c3edcd6ac1a7d0df77c20
SHA256: febdb68b1fdbdf3b43c055799d2e4cacb2fffa5f5b5e6fb5b882065061a96423
Homepage: https://awesomewm.org/
Description-en: highly configurable X window manager
 awesome manages windows dynamically in floating or tiled layouts. It is
 primarily targeted at power users, developers, and all those dealing with
 everyday computing tasks and looking for fine-grained control over their
 graphical environment.
 .
 It is highly extensible and scriptable via the Lua programming language,
 providing an easy-to-use and very well documented API to configure its
 behavior.
 .
 awesome uses tags instead of workspaces, which gives better flexibility
 in displaying windows, and can be entirely keyboard-driven, not needing a
 mouse. It also supports multi-headed configurations; uses XCB instead of
 Xlib for better performance; implements many freedesktop standards; and
 can be controlled over D-Bus from awesome-client.
Description-md5: 692af96918d4ae3a55f215394ce2421a
```


## Package Info

to show [Source Package: [awesome](https://packages.ubuntu.com/source/focal/awesome)] info.

``` sh
$ apt-cache showsrc awesome
```

show

```
Package: awesome
Format: 3.0 (quilt)
Binary: awesome, awesome-doc
Architecture: any all
Version: 4.3-4
Priority: optional
Section: universe/x11
Maintainer: Reiner Herrmann <reiner@reiner-h.de>
Standards-Version: 4.3.0
Build-Depends: asciidoctor, cmake, debhelper-compat (= 12), imagemagick, libcairo2-dev, libdbus-1-dev, libgdk-pixbuf2.0-dev, libglib2.0-dev, liblua5.3-dev, libpango1.0-dev, libstartup-notification0-dev, libx11-xcb-dev, libxcb-cursor-dev, libxcb-icccm4-dev, libxcb-keysyms1-dev, libxcb-randr0-dev, libxcb-shape0-dev, libxcb-util0-dev, libxcb-xinerama0-dev, libxcb-xkb-dev, libxcb-xrm-dev, libxcb-xtest0-dev, libxdg-basedir-dev, libxkbcommon-dev, libxkbcommon-x11-dev, lua-busted, lua-discount, lua-ldoc, lua-lgi (>= 0.9.2), lua5.3, x11proto-core-dev, xmlto, zsh
Testsuite: autopkgtest
Homepage: https://awesomewm.org/
Vcs-Browser: https://salsa.debian.org/deki-guest/awesome
Vcs-Git: https://salsa.debian.org/deki-guest/awesome.git
Directory: pool/universe/a/awesome
Package-List:
 awesome deb x11 optional arch=any
 awesome-doc deb doc optional arch=all
Files:
 42d073f307385c40de34e6e0aa5d7c56 2825 awesome_4.3-4.dsc
 4d75cce54a86b6bbaa6e88a926cab5a7 1037816 awesome_4.3.orig.tar.xz
 7b375f04dd54542867f777f2abfb820b 488 awesome_4.3.orig.tar.xz.asc
 5f59195349a87ee4d9353a79bae69ed2 22344 awesome_4.3-4.debian.tar.xz
Checksums-Sha1:
 070bfcac6fd28f1c9a441e0b27ddba85291d3b4a 2825 awesome_4.3-4.dsc
 543f3b2ee17719176f37fbe3f0cfd1d046a9e1cc 1037816 awesome_4.3.orig.tar.xz
 c97fe5710cc853525f03d2ff93b257727cfbe7e5 488 awesome_4.3.orig.tar.xz.asc
 174be9b93886bdf0825f5f5d4072bbe2c72e6dff 22344 awesome_4.3-4.debian.tar.xz
Checksums-Sha256:
 d32ff369d693d4a2e83e055fa1afd5dc9c38523ee9305cd5895bdd9f93c08b73 2825 awesome_4.3-4.dsc
 78264d6f012350b371e339127aca485260bc0aa935eff578ba75ce1a00e11753 1037816 awesome_4.3.orig.tar.xz
 6afb73289caed82173d56a8e496658fdd338a0dadc436fd074f1261d2cd229fd 488 awesome_4.3.orig.tar.xz.asc
 12fd6093ac0807ccfeef50b41b4efd37fd3175be4250abc9b28eafc976589cf0 22344 awesome_4.3-4.debian.tar.xz
Testsuite-Triggers: build-essential, dbus-x11, gir1.2-gtk-3.0, libxcb-icccm4-dev, libxcb-util0-dev, libxcb1-dev, lua5.2, x11-apps, x11-utils, x11-xserver-utils, xfonts-base, xterm, xvfb
```
