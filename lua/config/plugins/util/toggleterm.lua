return {
    'akinsho/toggleterm.nvim',
    keys = {
        {"<leader>t", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal"},
    },
    config = function()
        require('toggleterm').setup({
            size = 10,
        })
    end
}