vim.opt.relativenumber = true

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- keymaps

keymap.set('i', 'jj', '<ESC>', opts)
keymap.set('n', '<C-s>', ':w<CR>', opts)
keymap.set('n', 'S', ':%s/\\C')
keymap.set('n', 'C', 'ciw')

vim.api.nvim_set_keymap('n', '<leader>d', '<Plug>(coc-definition)', opts) -- go to definition on typescript LSP
vim.api.nvim_set_keymap('n', '<Space>x', ':bd<CR>', opts)

-- lazy git

keymap.set('n', '<leader>gg', ':LazyGit<CR>', opts)

return {}
