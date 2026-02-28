return {
  "theprimeagen/harpoon",
    config = function()
      vim.keymap.set('n', '<leader>ma', function() require("harpoon.mark").add_file() end, {desc = "Mark buffer"})
      vim.keymap.set('n', '<leader>mm', function() require("harpoon.ui").toggle_quick_menu() end, {desc = "Harpoon quick menu"})
      vim.keymap.set('n', '<leader>mq', function() require("harpoon.ui").nav_file(1) end, {desc = "Harpoon buffer 1"})
      vim.keymap.set('n', '<leader>mw', function() require("harpoon.ui").nav_file(2) end, {desc = "Harpoon buffer 2"})
      vim.keymap.set('n', '<leader>me', function() require("harpoon.ui").nav_file(3) end, {desc = "Harpoon buffer 3"})
    end
}
