vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
    })

    use({
        "catppuccin/nvim",
        as = "catppuccin",
    })

    use({
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    })

    use({
        "goolord/alpha-nvim",
    })
    use({
        "nvim-telescope/telescope-ui-select.nvim",
    })
    use({
        "nvimtools/none-ls.nvim",
        requires = { "nvim-lua/plenary.nvim", "nvimtools/none-ls-extras.nvim" },
    })
    use({
        "L3MON4D3/LuaSnip",
        requires = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    })
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/nvim-cmp")
    use("wbthomason/packer.nvim")
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("ThePrimeagen/harpoon")
    use("norcalli/nvim-colorizer.lua")
end)
