require('lspsaga').setup({
	symbol_in_winbar = {
		enable = false
	},
	diagnostic = {
		max_height = 0.6,
		max_width = 0.6
	},
	ui = {
		code_action = ''
	}
})

vim.keymap.set('n', 'L', '<CMD>Lspsaga diagnostic_jump_next<CR>')
vim.keymap.set('n', 'gd', '<CMD>Lspsaga goto_type_definition<CR>')
vim.keymap.set('n', 'K', '<CMD>Lspsaga peek_type_definition<CR>')

return {}
