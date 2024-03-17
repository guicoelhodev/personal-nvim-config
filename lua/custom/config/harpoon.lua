-- ================================== HARPOON SETUP WITH TELESCOPE ==========================================
local harpoon = require 'harpoon'
harpoon:setup {}

-- basic telescope configuration
local conf = require('telescope.config').values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require('telescope.pickers')
    .new({}, {
      prompt_title = 'Harpoon',
      finder = require('telescope.finders').new_table {
        results = file_paths,
      },
      previewer = conf.file_previewer {},
      sorter = conf.generic_sorter {},
    })
    :find()
end

vim.keymap.set('n', 'we', function()
  toggle_telescope(harpoon:list())
end, { desc = 'Open harpoon window' })

vim.keymap.set('n', 'wr', function()
  harpoon:list():append()
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

return {}
-- ==========================================================================================================
