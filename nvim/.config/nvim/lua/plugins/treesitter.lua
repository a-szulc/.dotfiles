return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                ensure_installed = {"css", "c", "lua"},
                -- "rust", "go", "java", "javascript", "typescript",
                auto_install = true,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    }
}
