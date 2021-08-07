---
title: 編譯 github-master 安裝
nav_order: 12
parent: 安裝
---

# 編譯 github-master 安裝


## 環境

* Xubuntu 20.04

## 移除舊版

執行下面指令，先移除已經安裝系統上的版本。

``` sh
$ sudo apt-get purge awesome
```

## 編譯安裝步驟


### 安裝編譯所需要的編譯工具

執行下面指令，安裝「Package: [build-essential](https://packages.ubuntu.com/bionic/build-essential)」。

``` sh
$ sudo apt-get install build-essential
```


### 安裝編譯所需要的開發「Package」

執行下面指令，安裝編譯「[awesome](https://github.com/awesomeWM/awesome/)」所需要的開發「Package」。

``` sh
$ sudo apt build-dep awesome
```


### 安裝編譯所需要的開發「Package」

因為上面的步驟，還少安裝「[libxcb-xfixes0-dev](https://packages.ubuntu.com/focal/libxcb-xfixes0-dev)」，這也是編譯所需要的開發「Package」。

詳細請參考另外一篇「[討論回覆](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=362428#forumpost362428)」。


執行下面指令，安裝「[libxcb-xfixes0-dev](https://packages.ubuntu.com/focal/libxcb-xfixes0-dev)」。

``` sh
$ sudo apt install libxcb-xfixes0-dev
```


### 安裝 git

執行下面指令，安裝「[git](https://packages.ubuntu.com/focal/git)」。

``` sh
$ sudo apt-get install git
```


### clone

執行下面指令，下載「GitHub」上的檔案。

``` sh
$ git clone https://github.com/awesomeWM/awesome.git
```

下載完畢，執行下面指令，切換到「awesome」這個資料夾。

``` sh
$ cd awesome
```


### 編譯

執行下面指令，開始編譯

``` sh
$ make
```

### 製作「deb」檔

編譯成功後，執行下面指令，製作「deb」檔。

``` sh
$ make package
```

### 安裝「deb」檔

製作「deb」檔成功後，執行下面指令，安裝「deb」檔。

``` sh
$ sudo dpkg -i build/*.deb
```

### 安裝「xsession desktop entry」檔

執行下面指令，安裝「xsession desktop entry」檔，

安裝到「/usr/share/xsessions/awesome.desktop」這個路徑。

```sh
$ sudo install -m 644 /usr/local/share/xsessions/awesome.desktop /usr/share/xsessions/awesome.desktop
```


## 版本

安裝好後，執行下面指令


``` sh
$ awesome -v
```

顯示

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

執行下面指令，獲得「awesome」的安裝狀態資訊。

``` sh
$ dpkg -l awesome
```

顯示

```
dpkg -l awesome
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version                  Architecture Description
+++-==============-========================-============-=================================
ii  awesome        4.3.0.0~git850-g9781f14b amd64        A tiling window manager
```

## 範例

* [build-install from github-master](https://github.com/samwhelp/note-about-awesomewm/tree/gh-pages/_demo/concept/demo-start/demo-config-awesome-github-master)
* play-ubuntu-20.04-plan / prototype / [awesome](https://github.com/samwhelp/play-ubuntu-20.04-plan/tree/master/prototype/awesome) / [build-install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/build-install.sh)
* [demo-config-zero](https://github.com/samwhelp/note-about-awesomewm/tree/gh-pages/_demo/concept/demo-start/demo-config-zero)
