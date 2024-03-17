vim.opt.relativenumber = true

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- keymaps

-- enter on NORMAL mode
keymap.set('i', 'jj', '<ESC>', opts)

-- replace content lke Ctrl + f vscode
keymap.set('n', 'S', ':%s/\\C')

--- delete word and enter on insert mode
keymap.set('n', 'C', 'ciw')

-- go to definition on typescript LSP
vim.api.nvim_set_keymap('n', '<leader>d', '<Plug>(coc-definition)', opts)

-- close current buffer (file)
vim.api.nvim_set_keymap('n', '<Space>x', ':bd<CR>', opts)

-- save file
keymap.set('n', '<C-s>', ':w<CR>', opts)

-- lazy git
keymap.set('n', '<leader>g', ':LazyGit<CR>', opts)

-- move with selected block
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv' '>+1<CR>gv=gv'")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv' '<-2<CR>gv=gv' ")

return {}
