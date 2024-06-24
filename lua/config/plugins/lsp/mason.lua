return {
    {
        'williamboman/mason.nvim',
        event = 'VeryLazy',
        config = function()
        require('mason').setup({
               -- Options Here
            })
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "clangd",
                    "neocmake",
                    "pyright",
                    'lua_ls',
                },
                automatic_installation = true, -- not the same as ensure_installed
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
    }
}