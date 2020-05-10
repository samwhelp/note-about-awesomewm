---
title: 自訂安裝腳本
nav_order: 13
parent: 安裝
---


# 自訂安裝腳本

我個人安裝的腳本，放在「[GitHub](https://github.com/samwhelp/play-ubuntu-20.04-plan/tree/master/prototype/awesome)」上。

## 環境

* Xubuntu 20.04

## 操作步驟


### 安裝 git

執行下面指令，安裝「Package: [git](https://packages.ubuntu.com/focal/git)」。

``` sh
$ sudo apt-get install git
```

### clone

執行下面指令，下載「[GitHub](https://github.com/samwhelp/play-ubuntu-20.04-plan)」上的檔案。

``` sh
$ git clone https://github.com/samwhelp/play-ubuntu-20.04-plan.git
```

下載完畢，執行下面指令，切換到「play-ubuntu-20.04-plan/prototype/awesome」這個資料夾。

``` sh
$ cd play-ubuntu-20.04-plan/prototype/awesome
```


### 編譯且安裝

執行下面指令，開始編譯，並且安裝「awesome」到系統上。

``` sh
$ make build-install
```

執行「[make build-install](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/Makefile#L39)」，就會去執行「[./build-install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/build-install.sh)」，

也就是也可以直接「`./build-install.sh`」。

而這個步驟，其實就是直接將「[編譯 github-master 安裝](https://samwhelp.github.io/note-about-awesome-wm/read/install/build-github-master-install.html)」那頁說明的步驟，

寫到「[build-install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/build-install.sh)」裡。


### 安裝設定檔和個人慣用套件包

執行下面指令，就會安裝一些微調的設定檔和個人慣用套件包到系統上

``` sh
$ make install
```

執行「[make install](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/Makefile#L24)」，就會去執行「[./install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/install.sh)」，

而「[install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/install.sh)」就會去執行「[package-install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/package-install.sh)」和「[config-install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config-install.sh)」。


安裝完畢後，關於「awesome」的設定檔，可以到「[~/.config/awesome](https://github.com/samwhelp/play-ubuntu-20.04-plan/tree/master/prototype/awesome/config/awesome/start)」這個資料夾找到。


## 關於「package-install.sh」

關於「[package-install.sh](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/package-install.sh)」，是根據「[package-list.txt](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/package-list.txt)」，所列出的「Package」來安裝。

這個原理，可以參考我之前另一篇的「[討論回覆](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=362322#forumpost362322)」。

您可以在執行前，先編輯「package-list.txt」，編輯成您慣用的「Package」，

例如，我慣用「[pcmanfm-qt](https://packages.ubuntu.com/focal/pcmanfm-qt)」，您也可以改成「[thunar](https://packages.ubuntu.com/focal/thunar)」。

基本上不會有太大的影響，只是我有綁定「alt + shift + f」會啟動「[pcmanfm-qt](http://manpages.ubuntu.com/manpages/focal/en/man1/pcmanfm-qt.1.html)」，

到時可以自己修改「rc.lua」就可以了，

不改，操作上也不會有特別的影響。


## 關於修改「~/.config/awesome/rc.lua」


觀看「[~/.config/awesome/rc.lua](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/rc.lua)」，可以了解到，有多個「style」提供作選擇，

預設是載入「[style.experiment_onepanel.rc](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/style/experiment_onepanel/rc.lua)」，

所以可以自己修改「[~/.config/awesome/rc.lua](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/rc.lua)」，選擇不同的「style」來載入，

若已經在「awesome」的環境了，一些「style」我有設定「alt + shift + c」，重新啟動「awesome」。


## style



### awesome themes

| style |
| --- |
| style.awesome_default.rc |
| style.awesome_gtk.rc |
| style.awesome_zenburn.rc |
| style.awesome_sky.rc |
| style.awesome_xresources.rc |


### my experiment

#### onlyfloat

| style |
| --- |
| style.experiment_onlyfloat.rc |
| style.experiment_onlyfloat_notitlebar.rc |
| style.experiment_onlyfloat_notitlebar_nopanel.rc |


#### onlytile

| style |
| --- |
| style.experiment_onlytile.rc |
| style.experiment_onlytile_notitlebar.rc |
| style.experiment_onlytile_notitlebar_nopanel.rc |


#### dynamic

| style |
| --- |
| style.experiment_twopanel.rc |
| style.experiment_twopanel_notitlebar.rc |


| style |
| --- |
| style.experiment_onepanel.rc |
| style.experiment_onepanel_notitlebar.rc |


| style |
| --- |
| style.experiment.rc |


## 按鍵綁定

* [Keybind](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/spec-keybind.md)
* [Mousebind](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/spec-mousebind.md)
