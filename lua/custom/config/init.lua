vim.opt.relativenumber = true

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- keymaps

keymap.set('i', 'jj', '<ESC>', opts)
keymap.set('n', '<C-s>', ':w<CR>', opts)

-- telescope remap

local builtin = require 'telescope.builtin'
vim.keymap.set('n', 'fa', builtin.find_files, { desc = '[F]ind [A]ll files' })
vim.keymap.set('n', 'fw', builtin.grep_string, { desc = '[F]ind [W]ord' })

-- telescope browser

vim.api.nvim_set_keymap('n', 'ff', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', opts)

return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  {
    'folke/tokyonight.nvim',
    opts = {
      transparent = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' }, -- Check the init.vim on root of project. Harpoon config is there
  },
}
