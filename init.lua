
-- Plugins
require('plugins')

-- Options
require('options')

-- Keybindings
require('keybindings')

-- Godot Settings
vim.g.godot_executable = "/usr/bin/godot-mono"

-- For defold, associate .script files as .lua files
vim.api.nvim_create_autocmd("BufReadPre", {
  pattern = "*.script",
  callback = function()
    vim.api.nvim_buf_set_option(0, "filetype", "lua")
  end,
})

-- Lime Light Configuration
vim.g.limelight_conceal_ctermfg = "gray"
vim.g.limelight_conceal_ctermfg = 240
vim.g.colorizer_auto_color = 1

-- Neovide Config
if vim.g.neovide then
  vim.o.guifont = "JetBrains Mono"
  vim.g.neovide_scale_factor = 1
end
