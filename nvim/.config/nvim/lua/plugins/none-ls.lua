return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,
				-- js
				--null_ls.builtins.formatting.prettierd,
				-- css
				--null_ls.builtins.diagnostics.stylelint,
			},
		})

		vim.keymap.set("n", "<leader>sf", vim.lsp.buf.format, {})
	end,
}
