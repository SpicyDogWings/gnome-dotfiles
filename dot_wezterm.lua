local wezterm = require 'wezterm'
local act = wezterm.action

local config = wezterm.config_builder()
config.default_prog = { '/usr/bin/nu' }
config.font_size = 12
config.color_scheme = 'Black Metal (Immortal) (base16)'
config.font = wezterm.font_with_fallback {
  'CommitMono Nerd Font',
  'JetBrains Mono',
  'Hack',
}
config.window_background_opacity = 0.95

-- Configuración de tabs
config.enable_tab_bar = true
config.tab_bar_at_bottom = true

return config
