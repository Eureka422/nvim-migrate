return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      {"<leader>e", ":Neotree toggle<CR>", desc = "NeoTree"},
    },
    -- lazy = false,
    config = function()
        require('neo-tree').setup({

        })
    end,
}