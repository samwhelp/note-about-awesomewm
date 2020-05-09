---
title: 透過 apt 安裝
nav_order: 11
parent: 安裝
---

# 透過 apt 安裝


## 環境

* Xubuntu 20.04


## 安裝指令

執行下面指令， 安裝「Package: [awesome](https://packages.ubuntu.com/focal/awesome)」。

``` sh
$ sudo apt-get install awesome
```

## 版本

安裝好後，執行下面指令


``` sh
$ awesome -v
```

顯示

```
awesome v4.3 (Too long)
 • Compiled against Lua 5.3.3 (running with Lua 5.3)
 • D-Bus support: ✔
 • execinfo support: ✔
 • xcb-randr version: 1.6
 • LGI version: 0.9.2
```

執行下面指令，獲得「Package: [awesome](https://packages.ubuntu.com/focal/awesome)」的安裝狀態資訊。

``` sh
$ dpkg -l awesome
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version      Architecture Description
+++-==============-============-============-====================================
ii  awesome        4.3-4        amd64        highly configurable X window manager
```

## 範例

* [apt-get install](https://github.com/samwhelp/note-about-awesome-wm/tree/gh-pages/_demo/demo-start/demo-config-awesome-default)
* [demo-config-zero](https://github.com/samwhelp/note-about-awesome-wm/tree/gh-pages/_demo/demo-start/demo-config-zero)
* [demo-config-start](https://github.com/samwhelp/note-about-awesome-wm/tree/gh-pages/_demo/demo-start/demo-config-start)
