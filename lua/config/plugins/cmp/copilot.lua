return {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
        vim.g.copilot_enabled = true
        vim.g.copilot_no_tab_map = true
        require("copilot").setup({
            panel = {
                enable = true,
                auto_refresh = true,
                layout = {
                    position = "right",
                    ratio = 0.2,
                }

            },
            suggestion = {
                auto_trigger = true,
                keymap = {
                    accept = "<Tab>",
                    accept_word = "<C-right>",
                    accept_line = "<CR>",
                    dismiss = "<Esc>",
                }
            },
        })
    end,
}