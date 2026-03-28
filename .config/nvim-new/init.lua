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

-- Write Highlight
local ns = vim.api.nvim_create_namespace("save_flash")
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    local line = vim.fn.line(".")
    vim.highlight.range(
      0,
      ns,
      "IncSearch",
      { line - 1, 0 },
      { line - 1, -1 },
      { inclusive = true }
    )
    vim.defer_fn(function()
      vim.api.nvim_buf_clear_namespace(0, ns, 0, -1)
    end, 200)
  end,
})

-- Color My Pencil
vim.cmd([[
highlight Normal guibg=NONE ctermbg=NONE
highlight NormalNC guibg=NONE ctermbg=NONE
highlight EndOfBuffer guibg=NONE ctermbg=NONE
highlight SignColumn guibg=NONE
]])
