local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_background_opacity = 0.85
config.window_decorations = "RESIZE"
config.font_size = 18.0
config.use_fancy_tab_bar = false
config.adjust_window_size_when_changing_font_size = false
config.font = wezterm.font "NotoMonoNerdFont"
config.default_cwd = "."
config.initial_cols = 120
config.initial_rows = 24
config.default_cursor_style = "BlinkingBar"
config.tab_max_width = 16
config.window_padding = {
	left   = 0,
	right  = 0,
	top    = 0,
	bottom = 0,
}
config.window_frame = {
	border_left_width = "2pt",
	border_right_width = "2pt",
	border_bottom_height = "2pt",
	border_top_height = "2pt",
	border_left_color = "grey",
	border_right_color = "grey",
	border_bottom_color = "grey",
	border_top_color = "grey",
}
config.colors = {
	cursor_bg = "#ffffff",
	cursor_border = "#ffffff",
	selection_fg = "#000000",
	selection_bg = "#ffffff",
	tab_bar = {
		background = "rgba(0,0,0,0.85)",
	}
}

wezterm.on("update-status", function(window)
	local overrides = window:get_config_overrides() or {}
	if window:is_focused() then
		overrides.window_frame = {
			border_left_width = "2pt",
			border_right_width = "2pt",
			border_bottom_height = "2pt",
			border_top_height = "2pt",
			border_left_color = "grey",
			border_right_color = "grey",
			border_bottom_color = "grey",
			border_top_color = "grey",
		}
	else
		overrides.window_frame = {
			border_left_width = "2pt",
			border_right_width = "2pt",
			border_bottom_height = "2pt",
			border_top_height = "2pt",
			border_left_color = "black",
			border_right_color = "black",
			border_bottom_color = "black",
			border_top_color = "black",
		}
	end
	window:set_config_overrides(overrides)
end)

wezterm.on("update-right-status", function(window, pane)
    window:set_right_status(wezterm.format {
        {
			Text = string.gsub(
				pane:get_foreground_process_name(), "(.*[/\\])(.*)", "%2"
			)
		}
    })
end)

return config
