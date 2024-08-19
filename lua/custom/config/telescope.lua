-- telescope remap

local keymap = vim.keymap
local builtin = require 'telescope.builtin'
local opts = { noremap = true, silent = true }

keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [A]ll files' })
keymap.set('n', 'fw', builtin.live_grep, { desc = '[S]earch by [G]rep' })

-- telescope browser

return {}
