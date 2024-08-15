require('lspsaga').setup({
	symbol_in_winbar = {
		enable = false
	},
	diagnostic = {
		max_height = 0.6,
		max_width = 0.6
	}
})

vim.keymap.set('n', 'L', '<CMD>Lspsaga diagnostic_jump_next<CR>')
return {}
