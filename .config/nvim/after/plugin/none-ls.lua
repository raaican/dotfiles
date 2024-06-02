local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- lua server
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.selene,
        -- Typescript server
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.semgrep,
    },
})

