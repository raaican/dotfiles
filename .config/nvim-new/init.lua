require("config.lazy")
require("config.remap")
require("config.set")

-- Treesitter highlight
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

-- Yank Highlight
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight on Yank',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end
})
