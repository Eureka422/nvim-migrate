vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- quick move
map('n', '<S-j>', 'j5', opts)
map('n', '<S-k>', 'k5', opts)

-- move between windows
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- nvim tree

-- toggle term
-- map('n', '<leader>t', ':ToggleTerm<CR>', opts)

-- telescope    
-- map('n', '<leader>ff', ':Telescope find_files<CR>', opts)   -- find files
-- map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)    -- find string in files
-- map('n', '<leader>fb', ':Telescope buffers<CR>', opts)      -- find buffers
-- map('n', '<leader>fh', ':Telescope help_tags<CR>', opts)    -- find help tags


-- my script
function insert_comment()
    local filename = vim.fn.expand('%:t') -- 获取当前文件名
    local ext = vim.fn.expand('%:e') -- 从文件名获取扩展名
    if ext == "cpp" or ext == "c" then
        vim.fn.append(0, "/* ===============================================")
        vim.fn.append(1, " * File: " .. filename) -- 插入文件名
        vim.fn.append(2, " * Author: Eureka422@outlook.com")
        vim.fn.append(3, " * Created Time: " .. os.date("%Y-%m-%d %H:%M:%S"))
        vim.fn.append(4, " * Description: ")
        vim.fn.append(5, " * =============================================*/")
    elseif ext == "sh" then
        vim.fn.append(0, "#!/bin/bash")
        vim.fn.append(1, "# ===============================================")
        vim.fn.append(2, "# File: " .. filename) -- 插入文件名
        vim.fn.append(3, "# Author: Eureka422@outlook.com")
        vim.fn.append(4, "# Created Time: " .. os.date("%Y-%m-%d %H:%M:%S"))
        vim.fn.append(5, "# Description: ")
        vim.fn.append(6, "# ===============================================")
    end
end

map('n', '<leader>c', ':lua insert_comment()<CR>', opts)
