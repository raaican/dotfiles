return {
  "theprimeagen/harpoon",
    config = function()
      vim.keymap.set('n', '<leader>ma', function() require("harpoon.mark").add_file() end)
      vim.keymap.set('n', '<leader>mm', function() require("harpoon.ui").toggle_quick_menu() end)
      vim.keymap.set('n', '<leader>mq', function() require("harpoon.ui").nav_file(1) end)
      vim.keymap.set('n', '<leader>mw', function() require("harpoon.ui").nav_file(2) end)
      vim.keymap.set('n', '<leader>me', function() require("harpoon.ui").nav_file(3) end)
    end
}
