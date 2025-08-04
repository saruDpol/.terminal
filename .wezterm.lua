local wezterm = require("wezterm")

local solarized_osaka = {
	foreground = "#d0d0d0",
	background = "#00141a",
}

return {
	-- Defaulting to wsl home directory
	default_prog = { "wsl.exe", "-d", "Ubuntu", "--cd", "~" },

	-- font settings
	font = wezterm.font("BlexMono Nerd Font"),
	font_size = 13.0,

	--	colorscheme
	color_schemes = {
		["Solarized Osaka"] = solarized_osaka,
	},
	color_scheme = "Solarized Osaka",
	window_background_opacity = 0.85,

	--Performance tweaks
	enable_wayland = false,
	use_fancy_tab_bar = false,
	window_decorations = "RESIZE",
	enable_scroll_bar = false,
	scrollback_lines = 3500,

	-- initial window size
	initial_cols = 120,
	initial_rows = 45,

	-- Use the fastes renderer
	front_end = "OpenGL",

	-- hide tab bar if only one tab
	hide_tab_bar_if_only_one_tab = true,
}
