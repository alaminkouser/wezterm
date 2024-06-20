local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.window_background_opacity = 0.85
config.window_decorations = "RESIZE"
config.font_size = 18.0
config.use_fancy_tab_bar = false
config.adjust_window_size_when_changing_font_size = false
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font "NotoMonoNerdFont"
config.default_cwd = "."
config.initial_cols = 120
config.initial_rows = 24
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
		background = "rgba(0,0,0,0.8)",
	}
}

return config
