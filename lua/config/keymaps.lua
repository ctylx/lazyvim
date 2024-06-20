-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- yanky.nvim
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")
vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")

-- hop.nvim
local hop = require("hop")
local directions = require("hop.hint").HintDirection
vim.keymap.set("", "f", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false })
end)
vim.keymap.set("", "F", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false })
end)
vim.keymap.set("", "t", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })
end)
vim.keymap.set("", "T", function()
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
