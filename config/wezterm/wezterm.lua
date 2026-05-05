local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("JetBrainsMonoHangul Nerd Font")
config.font_size = 14.0

config.window_padding = {
	top = 8,
	right = 16,
	bottom = 0,
	left = 16,
}

config.default_cursor_style = "SteadyBar"

config.scrollback_lines = 10000

config.audible_bell = "Disabled"
config.visual_bell = {
	fade_in_function = "Linear",
	fade_in_duration_ms = 0,
	fade_out_function = "Linear",
	fade_out_duration_ms = 0,
}

config.window_decorations = "NONE"

config.default_prog = { "bash", "--login", "-c", "exec fish" }

config.color_scheme = "Vs Code Dark+ (Gogh)"

config.unix_domains = {
	{
		name = "localhost",
	},
}
config.ssh_domains = require("ssh")

return config
