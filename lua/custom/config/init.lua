vim.opt.relativenumber = true

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

keymap.set('i', 'jj', '<ESC>', opts)

return {}
