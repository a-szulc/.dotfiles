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
                -- null_ls.builtins.diagnostics.stylelint,
                -- null_ls.builtins.formatting.prettier,

                null_ls.builtins.formatting.prettierd.with({
                    filetypes = { "html", "css", "javascript" }
                }),
                -- null_ls.builtins.formatting.prettier.with({
                --     filetypes = { "html", "css", "javascript" }
                -- }),

                --python
                null_ls.builtins.formatting.black,
                -- null_ls.builtins.diagnostics.mypy,
                -- null_ls.builtins.diagnostics.ruff_lsp,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        -- vim.keymap.set("n", "<leader>gf", function()
        --     vim.lsp.buf.format({ timeout_ms = 5000 })
        -- end, {})
    end,
}
