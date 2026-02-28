return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      vim.diagnostic.config({
        virtual_text = false,
        signs = false,
        underline = true,
      })
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('clangd')
      vim.lsp.enable('gopls')
      vim.lsp.enable('bashls')
      vim.keymap.set('n', '<Leader><Tab>', function() vim.lsp.buf.format() end, { desc = "Format entire buffer"})
      vim.keymap.set('n', '<Leader>ch', function() vim.diagnostic.hide() end, { desc = "Hide diagnostics"})
      vim.keymap.set('n', '<Leader>cs', function() vim.diagnostic.show() end, { desc = "Show diagnostics"})
      vim.keymap.set('n', '<Leader>cp', function() vim.diagnostic.jump({count=-1}) end, { desc = "Jump to prev. diag."})
      vim.keymap.set('n', '<Leader>cn', function() vim.diagnostic.jump({count=1}) end, { desc = "Jump to next diagnostics"})
      vim.o.updatetime = 250
      vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })]])
    end
  }
}
