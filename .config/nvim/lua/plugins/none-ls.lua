return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- lua
                null_ls.builtins.formatting.stylua,

                -- bash
                null_ls.builtins.formatting.shfmt,

                -- css
                --null_ls.builtins.diagnostics.stylelint,

                --python
                null_ls.builtins.formatting.black,
                -- null_ls.builtins.diagnostics.mypy,
                -- null_ls.builtins.diagnostics.ruff_lsp,
            },
        })

        vim.keymap.set("n", "<leader>sf", vim.lsp.buf.format, {})
    end,
}
