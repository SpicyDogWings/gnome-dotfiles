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
config.window_background_opacity = 0.9

-- Configuración de tabs
config.enable_tab_bar = true
config.tab_bar_at_bottom = true

config.window_frame = {
  active_titlebar_bg = '#020203',
  inactive_titlebar_bg = '#121213',
}

config.colors = {
  tab_bar = {
    background = '#0b0022',
    active_tab = {
      bg_color = '#020203',
      fg_color = '#6886A4',
      intensity = 'Normal',
    },
    inactive_tab = {
      bg_color = '#020203',
      fg_color = '#323233',
    },
  }
}

config.leader = { key = '.', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  { key = 'h', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Left', 10 } },
  { key = 'j', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Down', 10 } },
  { key = 'k', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Up', 10 } },
  { key = 'l', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Right', 10 } },
  { key = 'h', mods = 'CTRL|ALT', action = act.ActivatePaneDirection 'Left' },
  { key = 'j', mods = 'CTRL|ALT', action = act.ActivatePaneDirection 'Down' },
  { key = 'k', mods = 'CTRL|ALT', action = act.ActivatePaneDirection 'Up' },
  { key = 'l', mods = 'CTRL|ALT', action = act.ActivatePaneDirection 'Right' },
  { key = '|', mods = 'LEADER|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }},
  { key = '-', mods = 'LEADER', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }},
}

return config
