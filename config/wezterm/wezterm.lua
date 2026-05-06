local wezterm = require("wezterm")

-- wezterm.on("update-right-status", function(window, pane)
-- 	local domain_name = window:active_domain()
--
-- 	window:set_right_status(wezterm.format({
-- 		{ Foreground = { AnsiColor = "Green" } },
-- 		{ Text = " 🌐 Domain: " .. domain_name .. "  " },
-- 	}))
-- end)

local config = {}

config.font = wezterm.font("JetBrainsMonoHangul Nerd Font")
config.font_size = 14.0

config.window_padding = {
	top = 8,
	right = 16,
	bottom = 0,
	left = 16,
}

config.initial_cols = 160
config.initial_rows = 40

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

config.default_prog = { "bash", "--login", "-c", "exec ~/.local/bin/fish" }

config.color_scheme = "Vs Code Dark+ (Gogh)"

config.unix_domains = {
	{
		name = "localhost",
	},
}

local status, ssh_config = pcall(require, "ssh")
if status then
	config.ssh_domains = ssh_config
else
	config.ssh_domains = {}
end

return config
