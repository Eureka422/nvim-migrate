return {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup ({
            ensure_installed = {"c", "cpp", "bash", "python"},
            highlight = {
                enable = true,
            },
        })
    end
}
