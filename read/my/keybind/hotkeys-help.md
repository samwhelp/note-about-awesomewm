---
title: 快捷鍵提示
nav_order: 5110
parent: 快捷鍵
grand_parent: 我的配置
---


# 快捷鍵提示


## 快捷鍵

| 快捷鍵 | 說明 |
| --- | --- |
| `Win + F1` | 快捷鍵提示 |

* [英文](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/spec-keybind.md#hotkeys-help)

## 關鍵範例程式碼片段

``` lua
local awful = require('awful')
local hotkeys_popup = require('awful.hotkeys_popup')

key_super = 'Mod4'

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super }, 'F1', hotkeys_popup.show_help,
		{ description = 'Hotkeys', group = 'Awesome'}
	),

})
```

## 相關範例

* [簡易範例](https://github.com/samwhelp/note-about-awesome-wm/blob/gh-pages/_demo/demo-develop/keybind/demo-hotkeys_popup/rc.lua#L162)
* [程式碼片段](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/style/experiment_onepanel/awesome-gen-rc/Section/Keybind/Awesome.php#L30) / [我的配置](https://github.com/samwhelp/play-ubuntu-20.04-plan/blob/master/prototype/awesome/config/awesome/start/style/experiment_onepanel/rc.lua#L668)

## 相關文件

* [https://awesomewm.org/apidoc/libraries/awful.hotkeys_popup.html#awful.hotkeys_popup.show_help](https://awesomewm.org/apidoc/libraries/awful.hotkeys_popup.html#awful.hotkeys_popup.show_help)
* [https://awesomewm.org/apidoc/input_handling/awful.keyboard.html#module.append_global_keybindings](https://awesomewm.org/apidoc/input_handling/awful.keyboard.html#module.append_global_keybindings)
* [https://awesomewm.org/apidoc/input_handling/awful.key.html](https://awesomewm.org/apidoc/input_handling/awful.key.html)
