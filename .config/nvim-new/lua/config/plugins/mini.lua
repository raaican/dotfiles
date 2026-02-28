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
      animate.setup({ timing = 60 })
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
      cmd.setup()
    end
  }
}
