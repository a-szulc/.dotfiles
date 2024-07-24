return {
    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require("treesitter-context").setup({
                max_lines = 5,
                min_window_height = 15,
                multiline_threshold = 1,
            })

            vim.keymap.set("n", "<leader>ct", ":TSContextToggle<CR>")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = { "css", "c", "lua", "bash", "markdown", "markdown_inline" }, -- "rust", "go", "java", "javascript", "typescript"},
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
}
