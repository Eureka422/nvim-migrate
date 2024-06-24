--line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- coding
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'


--search settings
vim.opt.hlsearch = true
vim.opt.incsearch = true
-- vim.opt.ignorecase = true
vim.opt.smartcase = true

-- clipboard
-- vim.opt.clipboard:append("unnamed")
vim.opt.clipboard = "unnamedplus"

--tabs &indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

--cursor line
vim.opt.cursorline = true

--appearance
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

--backspace
vim.opt.backspace = "indent,eol,start"

-- dash
vim.opt.iskeyword:append("-")

vim.opt.autoread = true
vim.bo.autoread = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5

-- edgy
vim.opt.laststatus = 3
vim.opt.splitkeep = "screen"

-- 根据新建的文件类型，自动创建头部注释
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = {"*.cpp", "*.c", "*.sh"},
    callback = function(args)
        local filename = vim.fn.expand('%:t') -- 获取当前文件名
        local ext = args.file:match("^.+(%..+)$") -- 从文件名获取扩展名
        if ext == ".cpp" or ext == ".c" then
            vim.fn.append(0, "/* ===============================================")
            vim.fn.append(1, " * File: " .. filename) -- 插入文件名
            vim.fn.append(2, " * Author: Eureka422@outlook.com")
            vim.fn.append(3, " * Created Time: " .. os.date("%Y-%m-%d %H:%M:%S"))
            vim.fn.append(4, " * Description: ")
            vim.fn.append(5, " * =============================================*/")
        elseif ext == ".sh" then
            vim.fn.append(0, "#!/bin/bash")
            vim.fn.append(1, "# ===============================================")
            vim.fn.append(2, "# File: " .. filename) -- 插入文件名
            vim.fn.append(3, "# Author: Eureka422@outlook.com")
            vim.fn.append(4, "# Created Time: " .. os.date("%Y-%m-%d %H:%M:%S"))
            vim.fn.append(5, "# Description: ")
            vim.fn.append(6, "# ===============================================")
        end
    end
})


