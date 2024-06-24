return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    keys = {
        {"<leader>ff", ":Telescope find_files<CR>", desc = "Find File"},
        {"<leader>fg", ":Telescope live_grep<CR>", desc = "Live Grep"},
        {"<leader>fb", ":Telescope buffers<CR>", desc = "Buffers"},
        {"<leader>fh", ":Telescope help_tags<CR>", desc = "Help Tags"},
    },
    -- config = function()
    --     require('telescope').setup({
    --     })
    -- end,
}
