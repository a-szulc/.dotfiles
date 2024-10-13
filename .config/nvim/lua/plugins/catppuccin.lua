return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
                -- flavour = "mocha",
                show_end_of_buffer = true,
                dim_inactive = {
                    enabled = true,
                    shade = "dark",
                    percentage = 0.25,
                },
                custom_highlights = function(colors)
                    return {
                        Comment = { fg = "#89AEB1"},
                        LineNr = { fg = colors.overlay0 },
                    }
                end,
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
}
