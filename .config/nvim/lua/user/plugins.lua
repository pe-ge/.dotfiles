local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    "nvim-lua/plenary.nvim",

    -- cmp plugins
    "hrsh7th/nvim-cmp",  -- The completion plugin
    "hrsh7th/cmp-buffer",  -- buffer completions
    "hrsh7th/cmp-path",  -- path completions
    "hrsh7th/cmp-cmdline",  -- cmdline completions
    "saadparwaiz1/cmp_luasnip",  -- snippet completions

    -- snippets
    "L3MON4D3/LuaSnip",  --snippet engine
    "rafamadriz/friendly-snippets",  -- a bunch of snippets to use

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    "ThePrimeagen/harpoon",
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.3",
        dependencies = { { "nvim-lua/plenary.nvim" } }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    "mbbill/undotree",
    {'romgrk/barbar.nvim',
        dependencies = {
          'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
          -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
          -- animation = true,
          -- insert_at_start = true,
          -- …etc.
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },

    -- LSP
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},

    -- {
    --     'jose-elias-alvarez/null-ls.nvim',
    --     event = 'VeryLazy',
    --     opts = function()
    --         return require "user.null-ls"
    --     end
    -- },
    {'tpope/vim-fugitive'},
    {'windwp/nvim-autopairs'},
    {'numToStr/Comment.nvim'},
    {'JoosepAlviste/nvim-ts-context-commentstring'}
}

require("lazy").setup(plugins, opts)
