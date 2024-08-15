local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Appearance
local appearance = require("appearance")

if appearance.is_dark() then
	config.color_scheme = "Tokyo Night"
else
	config.color_scheme = "Tokyo Night Day"
end

config.font = wezterm.font("JetBrains Mono")
config.font_size = 13

config.window_decorations = "RESIZE"
config.window_frame = {
	font = wezterm.font({ family = "JetBrains Mono", weight = "Bold" }),
	font_size = 13,
}

-- Disable ligatures
config.harfbuzz_features = {"calt=0", "clig=0", "liga=0"}

local mux = wezterm.mux

-- Maximize on startup: https://github.com/wez/wezterm/issues/284 
wezterm.on("gui-startup", function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

config.native_macos_fullscreen_mode = true

-- Status bar
wezterm.on("update-status", function(window)
	local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

	local color_scheme = window:effective_config().resolved_palette
	local bg = color_scheme.background
	local fg = color_scheme.foreground

	window:set_right_status(wezterm.format({
		{ Background = { Color = "none" } },
		{ Foreground = { Color = bg } },
		{ Text = SOLID_LEFT_ARROW },

		{ Background = { Color = bg } },
		{ Foreground = { Color = fg } },
		{ Text = " " .. wezterm.hostname() .. " " },
	}))
end)

return config
