
--------------------------------------------------------------------------------
--- Head: Require
--

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")


-- Widget and layout library
local wibox = require("wibox")


-- Theme handling library
local beautiful = require("beautiful")

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


--print("gears.filesystem.get_themes_dir() = " .. gears.filesystem.get_themes_dir())

--print("gears.filesystem.get_configuration_dir() = " .. gears.filesystem.get_configuration_dir())

beautiful.init(gears.filesystem.get_configuration_dir() .. "theme/demo/theme.lua")

--
-- Tail: Beautiful
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: hotkeys_popup
--

-- hotkeys_popup
-- https://github.com/awesomeWM/awesome/blob/master/awesomerc.lua#L19
local hotkeys_popup = require("awful.hotkeys_popup")

--https://github.com/awesomeWM/awesome/tree/master/lib/awful/hotkeys_popup/keys
--require("awful.hotkeys_popup.keys")

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

screen.connect_signal("request::wallpaper", function(s)
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
		awful.layout.suit.tile,
		--awful.layout.suit.tile.bottom,
		--awful.layout.suit.magnifier,
		--awful.layout.suit.floating,
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

screen.connect_signal("request::desktop_decoration", function(s)
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

key_super = "Mod4"
key_alt = "Mod1"
key_shift = "Shift"

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



--------------------------------------------------------------------------------
--- Head: Mousebind / Client
--

client.connect_signal('request::default_mousebindings', function()

	awful.mouse.append_client_mousebindings({

		awful.button({ }, 1, function (c)
			c:activate { context = 'mouse_click' }
		end),


		awful.button({ key_super }, 1, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_move'  }
		end),

		awful.button({ key_super }, 3, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_resize'}
		end),


		awful.button({ key_alt }, 1, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_move'  }
		end),

		awful.button({ key_alt }, 3, function (c)
			c:activate { context = 'mouse_click', action = 'mouse_resize'}
		end),

	})

end)

--
--- Tail: Mousebind / Client
--------------------------------------------------------------------------------



--------------------------------------------------------------------------------
--- Head: Keybind / Client
--

client.connect_signal('request::default_keybindings', function()

	awful.keyboard.append_client_keybindings({

		awful.key(
			{ key_super }, 'q', function (c) c:kill() end,
			{ description = 'Window Close', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'f', function (c)
				c.fullscreen = not c.fullscreen
				c:raise()
			end,
			{ description = 'Window Toggle Fullscreen', group = 'Client' }
		),


		awful.key(
			{ key_super }, 'x', function (c)
				-- The client currently has the input focus, so it cannot be
				-- minimized, since minimized clients can't have the focus.
				c.minimized = true
			end ,
			{ description = 'Minimize', group = 'Client' }
		),

		awful.key(
			{ key_super }, 'n', function (c)
				-- The client currently has the input focus, so it cannot be
				-- minimized, since minimized clients can't have the focus.
				c.minimized = true
			end ,
			{ description = 'Minimize', group = 'Client' }
		),


		awful.key(
			{ key_super }, 'w', function (c)
				c.maximized = not c.maximized
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize', group = 'Client' }
		),


		awful.key(
			{ key_super }, 'm', function (c)
				c.maximized = not c.maximized
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize', group = 'Client' }
		),

		awful.key(
			{ key_super, 'Shift' }, 'm', function (c)
				c.maximized_horizontal = not c.maximized_horizontal
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize Horizontally', group = 'Client' }
		),

		awful.key(
			{ key_super, 'Control' }, 'm', function (c)
				c.maximized_vertical = not c.maximized_vertical
				c:raise()
			end ,
			{ description = 'Window Toggle Maximize Vertically', group = 'Client' }
		),


		-- Todo: [Win + v] for toggle show or hide titlebar
		--awful.key(
		--	{ key_super }, 'v', awful.client.floating.toggle ,
		--	{ description = 'toggle floating', group = 'Client' }
		--),

		awful.key(
			{ key_alt }, 'v', awful.client.floating.toggle ,
			{ description = 'Window Toggle Floating', group = 'Client' }
		),

		-- Swap Client To Master
		awful.key(
			{ key_alt, 'Shift' }, 'p', function (c) c:swap(awful.client.getmaster()) end,
			{ description = 'Move to Master', group = 'Client' }
		),

		-- awful.key(
		-- 	{ key_super, 'Control' }, 'Return', function (c) c:swap(awful.client.getmaster()) end,
		-- 	{ description = 'move to master', group = 'Client' }
		-- ),


		awful.key(
			{ key_super }, 'o', function (c) c:move_to_screen() end,
			{ description = 'move to screen', group = 'Client' }
		),


		awful.key(
			{ key_super }, 't', function (c) c.ontop = not c.ontop end,
			{ description = 'toggle keep on top', group = 'Client' }
		),


	})

end)

--
--- Tail: Keybind / Client
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--- Head: Keybind / Client
--

awful.keyboard.append_global_keybindings({




	awful.key(
		{ key_super }, 'a', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 's', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'z',
		function ()
			awful.client.focus.history.previous()
			if client.focus then
				client.focus:raise()
			end
		end,
		{ description = 'Back Last Client', group = 'Client'}
	),


	awful.key(
		{ key_super }, 'h', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'l', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),


	awful.key(
		{ key_super }, 'bracketleft', function () awful.client.focus.byidx(-1) end,
		{ description = 'Previous Client', group = 'Client'}
	),

	awful.key(
		{ key_super }, 'bracketright', function () awful.client.focus.byidx(1) end,
		{ description = 'Next Client', group = 'Client'}
	),



})

awful.keyboard.append_global_keybindings({

	-- Window Unminimize (Uniconify)
	awful.key(
		{ key_super, 'Shift' }, 'x', function ()
			local c = awful.client.restore()
			-- Focus restored client
			if c then
				c:activate { raise = true, context = 'key.unminimize' }
			end
		end,
		{ description = 'Restore minimized', group = 'Client' }
	),

	awful.key(
		{ key_super, 'Shift' }, 'n', function ()
			local c = awful.client.restore()
			-- Focus restored client
			if c then
				c:activate { raise = true, context = 'key.unminimize' }
			end
		end,
		{ description = 'Restore minimized', group = 'Client' }
	),


	awful.key(
		{ key_super }, 'u', awful.client.urgent.jumpto,
		{ description = 'Jump to urgent client', group = 'Client' }
	),

})




--
--- Tail: Keybind / Client
--------------------------------------------------------------------------------
