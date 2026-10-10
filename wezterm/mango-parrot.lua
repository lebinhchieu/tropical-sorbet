-- Mango Parrot (light) — applies the color scheme plus the WezTerm colors that
-- live outside a color scheme file (window frame, palettes, pane select).
local M = {}

function M.apply_to_config(config)
  config.color_scheme = 'Mango Parrot'

  -- Merge rather than replace, so a user's window_frame font/border widths survive.
  local frame = config.window_frame or {}
  frame.active_titlebar_bg = '#F0E6D6'
  frame.inactive_titlebar_bg = '#FCF8F1'
  frame.active_titlebar_fg = '#3E372E'
  frame.inactive_titlebar_fg = '#A99C86'
  frame.active_titlebar_border_bottom = '#E7DBC8'
  frame.inactive_titlebar_border_bottom = '#E7DBC8'
  frame.button_fg = '#857A68'
  frame.button_bg = '#F0E6D6'
  frame.button_hover_fg = '#3E372E'
  frame.button_hover_bg = '#E7DBC8'
  -- Only visible when the matching border_*_width is non-zero.
  frame.border_left_color = '#E7DBC8'
  frame.border_right_color = '#E7DBC8'
  frame.border_top_color = '#E7DBC8'
  frame.border_bottom_color = '#E7DBC8'
  config.window_frame = frame

  config.command_palette_bg_color = '#FCF8F1'
  config.command_palette_fg_color = '#3E372E'
  config.char_select_bg_color = '#FCF8F1'
  config.char_select_fg_color = '#3E372E'
  config.pane_select_bg_color = '#E8820E'
  config.pane_select_fg_color = '#FCF8F1'
  -- Only used when win32_system_backdrop = 'Acrylic'.
  config.win32_acrylic_accent_color = '#FCF8F1'
end

return M
