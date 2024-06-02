require("mason").setup()
require("mason-lspconfig").setup({
    auto_install = true,
    ensure_installed = { "tsserver" }
})
