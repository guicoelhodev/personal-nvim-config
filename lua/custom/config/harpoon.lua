-- ================================== HARPOON SETUP WITH TELESCOPE ==========================================

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup {}
    vim.keymap.set('n', 'we', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', 'wr', function()
      harpoon:list():add()
    end)

    vim.keymap.set('n', 'wu', function()
      harpoon:list():remove()
    end)

    vim.keymap.set('n', 'wh', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', 'wj', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', 'wk', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', 'wl', function()
      harpoon:list():select(4)
    end)

    vim.keymap.set('n', 'wu', function()
      harpoon:list():select(5)
    end)
    vim.keymap.set('n', 'wi', function()
      harpoon:list():select(6)
    end)
    vim.keymap.set('n', 'wo', function()
      harpoon:list():select(7)
    end)
  end,
}
-- ==========================================================================================================
