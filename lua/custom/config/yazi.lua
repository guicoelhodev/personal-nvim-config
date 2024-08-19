return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  config = function()
    local keymap = vim.keymap

    keymap.set('n', 'ff', '<CMD>Yazi<CR>')
    keymap.set('n', 'fa', '<CMD>Yazi cwd<CR>')
  end,
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    },
  },
}
