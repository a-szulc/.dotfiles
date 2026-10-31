return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c", "lua", "vim", "vimdoc", "javascript", "html", "go",
                "python", "bash",
            },
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },

            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>", -- set to `false` to disable one of the mappings
                    node_incremental = "<CR>",
                    scope_incremental = "<TAB>",
                    node_decremental = "<Backspace>",
                },
            },
        })
    end
}
