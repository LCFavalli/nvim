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

require("lazy").setup({
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-lua/plenary.nvim' },
    -- LSP
    { "neovim/nvim-lspconfig" },   -- enable LSP
    { "williamboman/mason.nvim" }, -- simple to use language server installer
    { "williamboman/mason-lspconfig.nvim" },
    -- AUTO COMPLETION
    { "hrsh7th/nvim-cmp" },             -- The completion plugin
    { "hrsh7th/cmp-buffer" },           -- buffer completions
    { "hrsh7th/cmp-path" },             -- path completions
    { "saadparwaiz1/cmp_luasnip" },     -- snippet completions
    { "hrsh7th/cmp-nvim-lsp" },         -- LSP completions
    { "hrsh7th/cmp-nvim-lua" },         -- nvim lua completions
    -- SNIPPETS
    { "L3MON4D3/LuaSnip" },             --snippet engine
    { "rafamadriz/friendly-snippets" }, -- a bunch of snippets to use
    -- FORMAT
    { "jose-elias-alvarez/null-ls.nvim" },

    -- SYNTAX HIGHLIGHTING
    { 'nvim-treesitter/nvim-treesitter',  build = ":TSUpdate" },
    -- { "nvim-treesitter/nvim-treesitter-context"},

    -- COLORSCHEME
    { 'rktjmp/lush.nvim' },
    { 'mcchrish/zenbones.nvim',           as = 'zenbones', },
    { 'rose-pine/neovim',                 as = 'rose-pine', },
    { 'folke/tokyonight.nvim',            as = 'tokyonight', },
    { "catppuccin/nvim",                  as = "catppuccin" },
    { 'bluz71/vim-moonfly-colors',        as = 'moonfly' },
    { 'blazkowolf/gruber-darker.nvim',    as = 'gruber-darker' },
    {
        'uloco/bluloco.nvim',
        lazy = false,
        priority = 1000,
    },
    -- { dir = '~/TMP/gruber-darker.nvim/',  as = 'gruber-darker' },

    { 'Shatur/neovim-ayu',      as = 'ayu' },
    { 'maxmx03/solarized.nvim', as = 'solarized' },
    -- FILE EXPLORER
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        }
    },

    -- STATUSLINE
    {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    },


    -- GIT
    { "lewis6991/gitsigns.nvim" },
    { "tpope/vim-fugitive" },

    -- COMMENT
    { 'numToStr/Comment.nvim' },

    -- COQ
    { 'whonore/Coqtail' },

    -- MARKDOWN PREVIEW
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- COPILOT
    { "github/copilot.vim" },

    -- SHOW INDENTATION
    -- { "lukas-reineke/indent-blankline.nvim",  main = "ibl", opts = {} },
    -- { "shellRaining/hlchunk.nvim", event = { "UIEnter" } },

    -- LATEX PREVIEW
    -- { "lervag/vimtex" },

    -- FILE NAVIGATION
    -- { "theprimeagen/harpoon" },

    -- UNDO TREE
    -- { "mbbill/undotree" },

    -- ZEN MODE
    -- { "folke/zen-mode.nvim" },
})
