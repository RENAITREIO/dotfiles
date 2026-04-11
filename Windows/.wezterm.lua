local wezterm = require("wezterm")
local act = wezterm.action
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return {
	-- 字体设置
	-- font = wezterm.font("AdwaitaMono Nerd Font"),
	-- font_size = 12.0,

	color_scheme = "Catppuccin Mocha",

	window_background_opacity = 0.6,
	text_background_opacity = 1.0,
	window_background_image = "C:\\terminalpicture.png",
	window_background_image_hsb = {
		brightness = 0.1,
	},
	win32_system_backdrop = "Acrylic",

	default_prog = { [[C:\Users\Elaine\scoop\apps\git\current\bin\bash.exe]] },

	window_close_confirmation = "NeverPrompt",

	disable_default_key_bindings = true,
	keys = {
		{ key = "c", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard") },
		{ key = "v", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard") },

		{ key = "=", mods = "CTRL|SHIFT", action = act.IncreaseFontSize },
		{ key = "-", mods = "CTRL|SHIFT", action = act.DecreaseFontSize },
		{ key = "Backspace", mods = "CTRL|SHIFT", action = act.ResetFontSize },

		{ key = "/", mods = "CTRL|SHIFT", action = act.Search({ CaseSensitiveString = "" }) },

		{ key = "t", mods = "CTRL|SHIFT", action = act.SpawnTab("CurrentPaneDomain") },
		{ key = "q", mods = "CTRL|SHIFT", action = act.CloseCurrentTab({ confirm = false }) },
		{ key = "RightArrow", mods = "CTRL|SHIFT", action = act.ActivateTabRelative(1) },
		{ key = "LeftArrow", mods = "CTRL|SHIFT", action = act.ActivateTabRelative(-1) },

		{ key = "Enter", mods = "CTRL|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "w", mods = "CTRL|SHIFT", action = act.CloseCurrentPane({ confirm = false }) },
		{ key = "]", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Next") },
		{ key = "[", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Prev") },

		{ key = "n", mods = "CTRL|SHIFT", action = act.SpawnWindow },
		{ key = "p", mods = "CTRL|SHIFT", action = act.ActivateCommandPalette },

		{ key = "h", mods = "CTRL|SHIFT", action = act.ActivateCopyMode },
	},
}
