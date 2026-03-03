return {
  {
    'nvim-mini/mini.nvim',
    config = function()
      local statusline = require 'mini.statusline'
      local animate = require 'mini.animate'
      local miniclue = require('mini.clue')
      local map = require('mini.map')
      local diff = require('mini.diff')
      local cmd = require('mini.cmdline')
      statusline.setup({ use_icons = true })
      animate.setup({
        cursor = { enable = false },
        timing = 50
      })
      miniclue.setup({
        triggers = {
          { mode = { 'n', 'x' }, keys = '<Leader>' }
        },
        window = { delay = 0 },
      })
      map.setup()
      vim.keymap.set('n', '<leader>cm', function ()
        require('mini.map').toggle()
      end,
      { desc = "Toggle mini map"})
      diff.setup()
      cmd.setup({
        autocomplete = {
          enable = false
        },
        autopeek = {
          predicate = function ()
            return true
          end
        }
      })
    end
  }
}
