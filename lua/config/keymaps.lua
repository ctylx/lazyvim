-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- hop.nvim
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "ff", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false })
end)
vim.keymap.set("", "FF", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end)
vim.keymap.set("", "tt", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })
end)
vim.keymap.set("", "TT", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false, hint_offset = -1 })
end)

-- Generate comment for current line
vim.keymap.set("n", "<Leader>dd", "<Plug>(doge-generate)")

-- Interactive mode comment todo-jumping
vim.keymap.set("n", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("n", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
vim.keymap.set("i", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("i", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")
vim.keymap.set("x", "<TAB>", "<Plug>(doge-comment-jump-forward)")
vim.keymap.set("x", "<S-TAB>", "<Plug>(doge-comment-jump-backward)")

-- cmd + s to save
vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set({ "i", "x", "n", "s" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
