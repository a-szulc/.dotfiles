return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			require("mason-lspconfig").setup_handlers({
				function(server)
					lspconfig[server].setup({ capabilities = capabilities })
				end,
				lspconfig.ltex.setup({
					capabilities = capabilities,
					settings = {
						filetypes = "markdown",
					},
				}),
			})

			-- lspconfig.html.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.lua_ls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.cssls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.bashls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.gopls.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.htmx.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.marksman.setup({
			-- 	capabilities = capabilities,
			-- })
			-- lspconfig.ltex.setup({
			-- 	capabilities = capabilities,
			-- })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})

			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>grf", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>gsi", vim.lsp.buf.signature_help, {})

            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, {})

			-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
			-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

			vim.keymap.set("n", "[d", vim.diagnostic.goto_next, {})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, {})

			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
		end,
	},
}
