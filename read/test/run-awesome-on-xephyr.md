---
title: 在 xephyr 上執行 awesome
nav_order: 21
parent: 測試
---


# 在 xephyr 上執行 awesome


## 安裝「xserver-xephyr」

執行下面指令安裝「Package: [xserver-xephyr](https://packages.ubuntu.com/focal/xserver-xephyr)」。

``` sh
sudo apt-get install xserver-xephyr
```

## 操作步驟

### 撰寫 xephyr 測試腳本

撰寫一個檔案「[run-awesome-on-xephyr.sh](https://github.com/samwhelp/note-about-awesome-wm/blob/gh-pages/_demo/demo-start/demo-config-zero/bin/dev.sh)」，內容如下


``` sh
#!/usr/bin/env bash

Xephyr :100 -ac -screen 1280x680 &
XEPHYR_PID=$!
sleep 0.5

DISPLAY=:100 awesome -c rc.lua
kill ${XEPHYR_PID}
```

這個腳本是在「github / worron / awesome-config / scripts / [run-with-xephyr.sh](https://github.com/worron/awesome-config/blob/master/scripts/run-with-xephyr.sh)」看到的。

相關說明，請參考另一篇「[討論回覆](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=362260#forumpost362260)」。


記得將這個腳本設為可執行

``` sh
$ chmod u+x run-awesome-on-xephyr.sh
```


### 撰寫 awesome rc.lua

撰寫一個檔案「[rc.lua](https://github.com/samwhelp/note-about-awesome-wm/blob/gh-pages/_demo/demo-start/demo-config-zero/rc.lua)」，內容如下，只有一行「[lua](https://www.lua.org/manual/5.3/manual.html#6.1)」指令。

```
print('hi')
```


### 啟動測試

執行下面指令，執行「[run-awesome-on-xephyr.sh](https://github.com/samwhelp/note-about-awesome-wm/blob/gh-pages/_demo/demo-start/demo-config-zero/bin/dev.sh)」。

``` sh
$ ./run-awesome-on-xephyr.sh
```

## 完整範例

* [demo-config-zero](https://github.com/samwhelp/note-about-awesome-wm/tree/gh-pages/_demo/demo-start/demo-config-zero)


## 相關範例

請參考「[範例](https://samwhelp.github.io/note-about-awesome-wm/read/demo.html)」那個頁面，有紀錄很多的範例連結。

這些範例，大多都有附上「xephyr 測試腳本」。

我也使用「xephyr」來測試其他的「Window Manager」，

所以我也寫了一些「xephyr 測試腳本」放在「[GitHub](https://github.com/samwhelp/play-ubuntu-20.04-plan/tree/master/tool/xephyr)」上。
