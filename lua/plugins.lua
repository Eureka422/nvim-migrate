local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    require('config/plugins/ui/colorscheme'),
    require('config/plugins/ui/lualine'),
    require('config/plugins/ui/neotree'),
    require('config/plugins/ui/gitsigns'),
  
    require('config/plugins/util/tools'),
    require('config/plugins/util/telescope'),
    require('config/plugins/util/toggleterm'),
    require('config/plugins/util/treesitter'),
    
    require('config/plugins/cmp/complete'),
    require('config/plugins/cmp/copilot'),
    
    -- require('config/plugins/lsp/mason'),
})
