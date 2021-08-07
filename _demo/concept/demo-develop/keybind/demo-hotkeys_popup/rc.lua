
--------------------------------------------------------------------------------
--- Head: Require
--

-- Standard awesome library
local gears = require('gears')
local awful = require('awful')
require('awful.autofocus')


-- Widget and layout library
local wibox = require('wibox')


-- Theme handling library
local beautiful = require('beautiful')

--
-- Tail: Require
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Head: Beautiful
--

-- https://awesomewm.org/apidoc/sample%20files/theme.lua.html
-- https://awesomewm.org/apidoc/theme_related_libraries/beautiful.html#init
-- https://awesomewm.org/apidoc/documentation/05-awesomerc.md.html#Variable_definitions
-- https://awesomewm.org/apidoc/documentation/06-appearance.md.html


--print('gears.filesystem.get_themes_dir() = ' .. gears.filesystem.get_themes_dir())

--print('gears.filesystem.get_configuration_dir() = ' .. gears.filesystem.get_configuration_dir())

beautiful.init(gears.filesystem.get_configuration_dir() .. 'theme/demo/theme.lua')

--
-- Tail: Beautiful
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: hotkeys_popup
--

-- hotkeys_popup
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L19
local hotkeys_popup = require('awful.hotkeys_popup')

--https://github.com/awesomeWM/awesome/tree/master/lib/awful/hotkeys_popup/keys
--require('awful.hotkeys_popup.keys')

--
-- Tail: hotkeys_popup
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Wallpaper
--

-- https://awesomewm.org/apidoc/core_components/screen.html#request::wallpaper
-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html
-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#maximized
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L118
-- https://github.com/awesomeWM/awesome/blob/master/lib/awful/screen.lua#L979

screen.connect_signal('request::wallpaper', function(s)
	-- do something

	print('request::wallpaper')

	-- https://awesomewm.org/doc/api/libraries/gears.wallpaper.html#maximized
	gears.wallpaper.maximized(beautiful.wallpaper, s)


end)

--
--- Tail: Wallpaper
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Head: Layout Enabled
--


-- Table of layouts to cover with awful.layout.inc, order matters.
tag.connect_signal('request::default_layouts', function()
	awful.layout.append_default_layouts({
		--awful.layout.suit.tile,
		--awful.layout.suit.tile.bottom,
		--awful.layout.suit.magnifier,
		awful.layout.suit.floating,
		--awful.layout.suit.max,
		-- awful.layout.suit.tile.left,
		--awful.layout.suit.tile.top,
		--awful.layout.suit.fair,
		--awful.layout.suit.fair.horizontal,
		--awful.layout.suit.spiral,
		-- awful.layout.suit.spiral.dwindle,
		-- -- awful.layout.suit.max.fullscreen,
		-- awful.layout.suit.corner.nw,
	})


end)

--
-- Tail: Layout Enabled
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Tag Layout
--

screen.connect_signal('request::desktop_decoration', function(s)
	-- do something

	print('request::desktop_decoration')

	-- Each screen has its own tag table.
	-- awful.tag({ '1', '2', '3', '4', '5', '6', '7', '8', '9' }, s, awful.layout.layouts[1])
	awful.tag({ 'Term', 'Edit', 'Web', 'File', 'Misc'}, s, awful.layout.layouts[1])



end)

--
--- Tail: Tag Layout
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Key
--

-- https://awesomewm.org/doc/api/libraries/awful.spawn.html
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L218

key_super = 'Mod4'
key_alt = 'Mod1'
key_shift = 'Shift'

--
--- Tail: Key
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Awesome
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_shift }, 'z', function () awful.spawn('shutdown now') end,
		{ description = 'Shutdown', group = 'Awesome'}
	),

	awful.key(
		{ key_alt, key_shift }, 'x', function() awesome.quit() end,
		{ description = 'Logout', group = 'Awesome'}
	),

	awful.key(
		{ key_alt, key_shift }, 'c', awesome.restart,
		{ description = 'Restart', group = 'Awesome'}
	),

})


awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_super }, 'F1', hotkeys_popup.show_help,
		{ description = 'Hotkeys', group = 'Awesome'}
	),

})

--
--- Tail: Keybind / Awesome
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Rofi
--

awful.keyboard.append_global_keybindings({

	awful.key(
		{ key_alt, key_shift }, 'r', function () awful.spawn('rofi -show run') end,
		{ description = 'Rofi Show Run', group = 'Rofi'}
	),

	awful.key(
		{ key_alt, key_shift }, 'd', function () awful.spawn('rofi -show drun -show-icons') end,
		{ description = 'Rofi Show Drun', group = 'Rofi'}
	),

	awful.key(
		{ key_alt, key_shift }, 'w', function () awful.spawn('rofi -show window -show-icons') end,
		{ description = 'Rofi Show Window', group = 'Rofi'}
	),

})

--
--- Tail: Keybind / Rofi
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Launch Application / Terminal
--

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

--
--- Tail: Keybind / Launch Application / Terminal
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Launch Application / Misc
--

awful.keyboard.append_global_keybindings({


	awful.key(
		{ key_alt, key_shift }, 'f', function () awful.spawn('pcmanfm-qt') end,
		{ description = 'Pcmanfm-qt', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'g', function () awful.spawn('nautilus') end,
		{ description = 'Nautilus', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'e', function () awful.spawn('gedit') end,
		{ description = 'Gedit', group = 'App'}
	),

	awful.key(
		{ key_alt, key_shift }, 'b', function () awful.spawn('firefox') end,
		{ description = 'Firefox', group = 'App'}
	),


})

--
--- Tail: Keybind / Launch Application / Misc
--------------------------------------------------------------------------------
