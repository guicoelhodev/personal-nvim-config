-- telescope remap

local keymap = vim.keymap
local builtin = require 'telescope.builtin'
local opts = { noremap = true, silent = true }

keymap.set('n', 'fa', builtin.find_files, { desc = '[F]ind [A]ll files' })
keymap.set('n', 'fw', builtin.grep_string, { desc = '[F]ind [W]ord' })

-- telescope browser

vim.api.nvim_set_keymap('n', 'ff', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', opts)

return {}
