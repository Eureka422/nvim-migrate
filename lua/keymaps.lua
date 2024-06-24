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
