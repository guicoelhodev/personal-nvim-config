return {
	"DreamMaoMao/yazi.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set('n', 'ff', '<CMD>Yazi<CR>')
	end
}
