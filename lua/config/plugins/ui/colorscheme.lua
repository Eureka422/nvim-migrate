return {-- colorscheme
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 100,
        init = function()
            vim.cmd.colorscheme('tokyonight-storm')
            require("tokyonight").setup({
                style = 'storm',
              })
        end,
}
