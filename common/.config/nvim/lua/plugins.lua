return {
    -- UI Enhancements
    { 'MunifTanjim/nui.nvim' },
    { 'hoob3rt/lualine.nvim' },
    { 'xiyaowong/transparent.nvim' },
    { 'akinsho/bufferline.nvim' },
    { 'goolord/alpha-nvim' },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

    -- Fuzzy Finder and File Explorer
    { 'junegunn/fzf' },
    { 'junegunn/fzf.vim' },
    { 'nvim-tree/nvim-tree.lua' },
    { 'nvim-tree/nvim-web-devicons' },

    -- Git Integration
    { 'tpope/vim-fugitive' },

    -- Color and Theme
    { 'norcalli/nvim-colorizer.lua' },
    { 'gbprod/nord.nvim' },
    { "craftzdog/solarized-osaka.nvim", priority = 1000, opts = {} },
    { 'npxbr/gruvbox.nvim' },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { 'folke/tokyonight.nvim' },
    { 'rebelot/kanagawa.nvim' },

    -- Markdown Preview
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    },

    -- LSP and Autocomplete
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { 'neovim/nvim-lspconfig' },
    { 'onsails/lspkind-nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/nvim-cmp' },
    { 'nvim-lua/plenary.nvim' },
    { 'hrsh7th/nvim-compe' },

    -- Treesitter and Related Plugins
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
    { 'windwp/nvim-ts-autotag' },
    { 'windwp/nvim-autopairs' },

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    },

    -- Rust Analyzer
    {
        'neovim/nvim-lspconfig',
        config = function() require('lspconfig').rust_analyzer.setup{} end
    },

    -- Noice UI for Neovim
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },

    -- Notifications
    {
        'rcarriga/nvim-notify',
        config = function() vim.notify = require("notify") end,
        opts = { timeout = 5000 },
    },

    -- Other Utilities
    { "github/copilot.vim", lazy = false },
    { "itchyny/lightline.vim", lazy = false },
    { 'mengelbrecht/lightline-bufferline', lazy = false },
}

