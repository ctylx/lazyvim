-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 设置最大字符数
vim.opt_local.textwidth = 120
-- 启用自动换行
vim.opt_local.formatoptions:append("t")

-- 禁用当前缓冲区的自动格式化
vim.api.nvim_create_autocmd("FileType", {
    pattern = {"python"},
    callback = function()
        vim.b.autoformat = false
    end,
})
