-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 设置最大字符数
vim.opt_local.textwidth = 120
-- 启用自动换行
vim.opt_local.formatoptions:append("t")
-- 设置 Tab 键宽度为 4
vim.o.tabstop = 4
-- 设置自动缩进的宽度为 4
vim.o.shiftwidth = 4
-- 插入 Tab 时使用 4 个空格
vim.bo.softtabstop = 4
-- 将 Tab 键转换为空格
vim.o.expandtab = true

-- 禁用当前缓冲区的自动格式化
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = { "python" },
--   callback = function()
--     vim.b.autoformat = false
--   end,
-- })
