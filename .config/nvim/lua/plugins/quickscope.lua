return {
	"unblevable/quick-scope",
	init = function()
		-- Trigger a highlight in the appropriate direction when pressing these keys:
		--vim.g.qs_highlight_on_keys = { "f", "F", "t", "T" }

		vim.cmd([[
        augroup qs_colors
            autocmd!
            autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline cterm=underline
            autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline cterm=underline
        augroup END
        ]])

	end,
}
