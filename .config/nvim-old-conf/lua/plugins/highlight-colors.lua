return {
    {
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({
                -- render = "foreground",
                render = "background",
                -- render = "virtual",
                enable_tailwind = true,

                ---Set virtual symbol suffix (defaults to '')
                virtual_symbol_prefix = "",

                ---Set virtual symbol suffix (defaults to ' ')
                virtual_symbol_suffix = "",

                virtual_symbol_position = "eol",
            })
        end,
    },
}
