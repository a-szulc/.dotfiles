return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            local builtin = require("telescope.builtin")

            -- find files
            vim.keymap.set("n", "<C-p>", builtin.git_files, {})
            vim.keymap.set("n", "<leader>pf", builtin.find_files, {})

            -- find buffers
            vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

            -- find string
            vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})

            -- find under cursor
            vim.keymap.set("n", "<leader>fu", builtin.grep_string, {})

            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("fzf")
        end,
    },
}
