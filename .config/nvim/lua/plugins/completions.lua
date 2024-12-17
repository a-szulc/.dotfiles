return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({

                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },

                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },

                -- mapping = cmp.mapping.preset.insert({
                -- 	["<C-b>"] = cmp.mapping.scroll_docs(-4),
                -- 	["<C-f>"] = cmp.mapping.scroll_docs(4),
                -- 	["<C-Space>"] = cmp.mapping.complete(),
                -- 	["<C-e>"] = cmp.mapping.abort(),
                -- 	["<CR>"] = cmp.mapping.confirm({ select = true }),
                -- 	["<Tab>"] = cmp.mapping(function(fallback)
                -- 		if cmp.visible() then
                -- 			cmp.select_next_item()
                -- 			-- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                -- 			-- that way you will only jump inside the snippet region
                -- 		else
                -- 			fallback()
                -- 		end
                -- 	end, { "i", "s" }),
                -- 	["<S-Tab>"] = cmp.mapping(function(fallback)
                -- 		if cmp.visible() then
                -- 			cmp.select_prev_item()
                -- 		else
                -- 			fallback()
                -- 		end
                -- 	end, { "i", "s" }),
                -- }),

                mapping = {
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-n>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
                        elseif luasnip.locally_jumpable(1) then
                            luasnip.jump(1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<C-p>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
                        elseif luasnip.locally_jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<C-y>"] = cmp.mapping(
                        cmp.mapping.confirm({
                            behavior = cmp.ConfirmBehavior.Insert,
                            select = true,
                        }),
                        { "i", "c" }
                    ),
                },

                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- For luasnip users.
                    { name = "buffer" },
                }),

                formatting = {
                    format = require("nvim-highlight-colors").format,
                },
            })
        end,
    },
}
