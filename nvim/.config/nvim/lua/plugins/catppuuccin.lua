return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
                show_end_of_buffer = true,
                dim_inactive = {
                    enabled = true,
                    shade = "dark",
                    percentage = 0.25,
                },
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
}
