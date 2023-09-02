-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
    pattern = "plugins.lua",
    command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    -- Common utilities
    use("nvim-lua/plenary.nvim")

    -- Icons
    use("nvim-tree/nvim-web-devicons")

    -- Colorschema
    use("EdenEast/nightfox.nvim")
    use("nyoom-engineering/oxocarbon.nvim")

    -- Statusline
    use({
        "nvim-lualine/lualine.nvim",
        event = "BufEnter",
        config = function()
            require("configs.lualine")
        end,
        requires = { "nvim-web-devicons" },
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
        config = function()
            require("configs.treesitter")
        end,
    })

    use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- LSP
    use({
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lsp")
        end,
    })

    use({
	    "L3MON4D3/LuaSnip",
	    -- follow latest release.
	    tag = "v<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	    -- install jsregexp (optional!:).
	    run = "make install_jsregexp"
    })

    -- cmp: Autocomplete
    use({
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        config = function()
            require("configs.cmp")
        end,
    })

    use("hrsh7th/cmp-nvim-lsp")

    use({ "hrsh7th/cmp-path", after = "nvim-cmp" })

    use({ "hrsh7th/cmp-buffer", after = "nvim-cmp" })

    -- LSP diagnostics, code actions, and more via Lua.
    use({
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("configs.null-ls")
        end,
        requires = { "nvim-lua/plenary.nvim" },
    })

    -- Mason: Portable package manager
    use({
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    })

    use({
        "williamboman/mason-lspconfig.nvim",
        -- config = function()
        --     require("configs.mason-lsp")
        -- end,
    })

    -- File manager
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    })

    -- Show colors
    use({
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" })
        end,
    })

    -- Terminal
    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("configs.toggleterm")
        end,
    })

    -- Git
    use({
        "lewis6991/gitsigns.nvim",
        config = function()
            require("configs.gitsigns")
        end,
    })

    -- Markdown Preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
    })

    -- Auto pairs
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("configs.autopairs")
        end,
    })

    -- Background Transparent
    use({
        "xiyaowong/nvim-transparent",
        config = function()
            require("transparent").setup({
                enable = true,
                extra_groups = {
                    "BufferLineTabClose",
                    "BufferlineBufferSelected",
                    "BufferLineFill",
                    "BufferLineBackground",
                    "BufferLineSeparator",
                    "BufferLineIndicatorSelected",
                },
                exclude = {},
            })
        end,
    })

    -- Rust Tools
    use("simrat39/rust-tools.nvim")


    use({
        "terrortylor/nvim-comment",
        config = function()
            require("nvim_comment").setup()
        end,
    })

    -- LaTeX Preview
    use { 
    'lervag/vimtex',
    opt = true,
    config = function ()
        vim.g.vimtex_view_general_viewer = 'evince'
        vim.g.vimtex_compiler_latexmk_engines = {
            _ = '-xelatex'
        }
        vim.g.tex_comment_nospell = 1
        vim.g.vimtex_compiler_progname = 'nvr'
        vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
        vim.g.vimtex_view_general_options_latexmk = '--unique'
    end,
    ft = 'tex'
}
    
end)
