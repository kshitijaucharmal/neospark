
-- Plugins
require('plugins')

-- Options
require('options')

-- Keybindings
require('keybindings')

-- Godot Settings
vim.g.godot_executable = "/usr/bin/godot-mono"

-- Lime Light Configuration
vim.g.limelight_conceal_ctermfg = "gray"
vim.g.limelight_conceal_ctermfg = 240
vim.g.colorizer_auto_color = 1

-- Neovide Config
if vim.g.neovide then
  vim.o.guifont = "JetBrains Mono"
  vim.g.neovide_scale_factor = 0.7
end
