-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false

-- provider
vim.g.python3_host_prog = "/Users/ctylx/miniconda3/bin/python"
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- neovide
vim.g.neovide_refresh_rate = 120
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_fullscreen = true
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_vfx_mode = "pixiedust"
