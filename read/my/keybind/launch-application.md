---
title: 啟動應用程式
nav_order: 5102
parent: 快捷鍵
grand_parent: 我的配置
---


# 啟動應用程式


## 快捷鍵

### 啟動終端機

| 快捷鍵 | 功能 |
| --- | --- |
| `Alt + Enter` | 啟動終端機 (sakura) |
| `Alt + Shift + a` | 啟動下拉終端機 (xfce4-terminal --drop-down) |
| `Alt + Shift + t` | 啟動終端機 (xterm) |
| `Alt + Ctrl + t` | 啟動終端機 (urxvt) |

### 啟動Rofi相關

| Key | Description |
| --- | --- |
| `Alt + Shift + r` | 啟動 Rofi (rofi -show run) |
| `Alt + Shift + w` | 啟動 Rofi (rofi -show window -show-icons) |
| `Alt + Shift + d` | 啟動 Rofi (rofi -show drun -show-icons) |

### 啟動常用應用程式

| Key | Description |
| --- | --- |
| `Alt + Shift + f` | 啟動檔案管理器 (pcmanfm-qt) |
| `Alt + Shift + g` | 啟動檔案管理器 (nautilus) |
| `Alt + Shift + b` | 啟動網頁瀏覽器 (firefox) |
| `Alt + Shift + e` | 啟動文字編輯器 (gedit) |


* [英文版說明](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/spec-keybind.md#launch-app)


## 關鍵範例程式碼片段

``` lua
local awful = require('awful')

key_super = 'Mod4'
key_alt = 'Mod1'
key_shift = 'Shift'
key_ctrl = 'Control'


awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt }, 'Return', function () awful.spawn('sakura') end,
		{ description = 'Terminal (sakura)', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'a', function () awful.spawn('xfce4-terminal --drop-down') end,
		{ description = 'Terminal (quake)', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 't', function () awful.spawn('xterm') end,
		{ description = 'Terminal (xterm)', group = 'App'}
	),

	awful.key(
		{ key_alt, key_ctrl }, 't', function () awful.spawn('urxvt') end,
		{ description = 'Terminal (urxvt)', group = 'App'}
	),

})
```

## 相關範例

* [簡易範例](https://github.com/samwhelp/note-about-awesomewm/blob/gh-pages/_demo/demo-develop/keybind/demo-keybind-start/rc.lua#L144)
* [程式碼片段](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/style/experiment_onepanel/awesome-gen-rc/Section/Keybind/LaunchApplication.php) / [我的配置](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/style/experiment_onepanel/rc.lua#L486)


## 相關文件

* [https://awesomewm.org/apidoc/libraries/awful.spawn.html](https://awesomewm.org/apidoc/libraries/awful.spawn.html)
* [https://awesomewm.org/apidoc/input_handling/awful.keyboard.html#module.append_global_keybindings](https://awesomewm.org/apidoc/input_handling/awful.keyboard.html#module.append_global_keybindings)
* [https://awesomewm.org/apidoc/input_handling/awful.key.html](https://awesomewm.org/apidoc/input_handling/awful.key.html)
