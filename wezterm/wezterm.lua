local wezterm = require("wezterm")
local act = wezterm.action

------- Keybindings -------
--
---- LEADER => C-a
--
-- LEADER + r => reload configuration
--
-- CMD + c,v => Copy, paste
-- CMD + LeftArrow => Switch to left Tab
-- CMD + RightArrow => Switch to right Tab
-- CMD + t => Create new tab using current pane domain (same directory)
-- OPTION + [,] => Move active tab
-- OPTION + ` => Show pane selector
--
-- LEADER + | => Split pane horizontal (left | right)
-- LEADER + _ => Split pane vertical (top | bottom)
--
-- OPTION + SHIFT + H,J,K,L => Resize active pane
-- OPTION + h,j,k,l => Switch active pane
-- OPTION + w => Close current pane

return {
	front_end = "WebGpu",
	check_for_updates = true,
	show_update_window = true,
	font_size = 12,
	line_height = 1,
	window_decorations = "RESIZE",
	-- cell_width = 1.1,
	-- font = wezterm.font("JetBrainsMono Nerd Font"),
	-- font = wezterm.font("Zed Mono"),
	-- font = wezterm.font("Zed Mono", { stretch = "Expanded" }),
	-- font = wezterm.font("BlexMono Nerd Font"),
	-- font = wezterm.font("Fira Code", { stretch = "Normal", weight = "Regular" }),
	font = wezterm.font("Iosevka", { stretch = "Expanded", weight = "Light" }),
	-- font = wezterm.font("Operator Mono Lig", { weight = 325 }),
	-- send_composed_key_when_left_alt_is_pressed = true,
	-- send_composed_key_when_right_alt_is_pressed = true,
	disable_default_key_bindings = true,
	window_background_opacity = 0.97,
	color_scheme = "Catppuccin Mocha",
	native_macos_fullscreen_mode = true,
	cursor_thickness = 1.85,
	cursor_blink_rate = 400,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	hide_tab_bar_if_only_one_tab = true,
	default_cursor_style = "BlinkingBar",
	keys = {
		{ key = "l", mods = "CMD|SHIFT", action = act.ActivateTabRelative(1) },
		{ key = "h", mods = "CMD|SHIFT", action = act.ActivateTabRelative(-1) },
		{ key = "j", mods = "CMD", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "CMD", action = act.ActivatePaneDirection("Up") },
		{ key = "Enter", mods = "CMD", action = act.ActivateCopyMode },
		{ key = "R", mods = "SHIFT|CTRL", action = act.ReloadConfiguration },
		{ key = "+", mods = "CTRL", action = act.IncreaseFontSize },
		{ key = "-", mods = "CTRL", action = act.DecreaseFontSize },
		{ key = "0", mods = "CTRL", action = act.ResetFontSize },
		{ key = "C", mods = "CMD|CTRL", action = act.CopyTo("Clipboard") },
		{ key = "N", mods = "SHIFT|CTRL", action = act.SpawnWindow },
		{
			key = "U",
			mods = "SHIFT|CTRL",
			action = act.CharSelect({ copy_on_select = true, copy_to = "ClipboardAndPrimarySelection" }),
		},
		{ key = "v", mods = "CMD", action = act.PasteFrom("Clipboard") },
		{ key = "PageUp", mods = "CTRL", action = act.ActivateTabRelative(-1) },
		{ key = "PageDown", mods = "CTRL", action = act.ActivateTabRelative(1) },
		{ key = "LeftArrow", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Left") },
		{ key = "RightArrow", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Right") },
		{ key = "UpArrow", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Up") },
		{ key = "DownArrow", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection("Down") },
		{ key = "-", mods = "CMD", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "|", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "h", mods = "CMD", action = act.ActivatePaneDirection("Left") },
		{ key = "l", mods = "CMD", action = act.ActivatePaneDirection("Right") },
		{ key = "t", mods = "CMD", action = act.SpawnTab("CurrentPaneDomain") },
		{ key = "w", mods = "CMD", action = act.CloseCurrentTab({ confirm = false }) },
		{ key = "x", mods = "CMD", action = act.CloseCurrentPane({ confirm = false }) },
		{ key = "b", mods = "LEADER|CTRL", action = act.SendString("\x02") },
		{ key = "H", mods = "CMD", action = act.AdjustPaneSize({ "Left", 5 }) },
		{ key = "L", mods = "CMD", action = act.AdjustPaneSize({ "Right", 5 }) },
		{ key = "K", mods = "CMD", action = act.AdjustPaneSize({ "Up", 5 }) },
		{ key = "J", mods = "CMD", action = act.AdjustPaneSize({ "Down", 5 }) },
	},
}
