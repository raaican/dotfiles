vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ss", vim.cmd.PackerSync)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>hs", vim.cmd.Alpha)
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
