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
    -- { 'nvim-tree/nvim-web-devicons' },

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
    { "nvimtools/none-ls.nvim" },       -- { "jose-elias-alvarez/null-ls.nvim" },

    -- SYNTAX HIGHLIGHTING
    { 'nvim-treesitter/nvim-treesitter',  build = ":TSUpdate" },
    -- { "nvim-treesitter/nvim-treesitter-context"},

    -- GIT
    { "lewis6991/gitsigns.nvim" },
    { "tpope/vim-fugitive" },

    -- COMMENT
    { 'numToStr/Comment.nvim' },

    -- MULTICURSOR
    {
        "brenton-leighton/multiple-cursors.nvim",
        version = "*", -- Use the latest tagged version
        opts = {
            -- custom_key_maps = {
            --     { "n", "<Leader>|", function() require("multiple-cursors").align() end },
            -- },
        },
        keys = {
            { "<C-j>",         "<Cmd>MultipleCursorsAddDown<CR>",          mode = { "n", "x" },      desc = "Add cursor and move down" },
            { "<C-k>",         "<Cmd>MultipleCursorsAddUp<CR>",            mode = { "n", "x" },      desc = "Add cursor and move up" },

            { "<C-Up>",        "<Cmd>MultipleCursorsAddUp<CR>",            mode = { "n", "i", "x" }, desc = "Add cursor and move up" },
            { "<C-Down>",      "<Cmd>MultipleCursorsAddDown<CR>",          mode = { "n", "i", "x" }, desc = "Add cursor and move down" },

            { "<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>",   mode = { "n", "i" },      desc = "Add or remove cursor" },

            { "<Leader>a",     "<Cmd>MultipleCursorsAddMatches<CR>",       mode = { "n", "x" },      desc = "Add cursors to cword" },
            { "<Leader>A",     "<Cmd>MultipleCursorsAddMatchesV<CR>",      mode = { "n", "x" },      desc = "Add cursors to cword in previous area" },

            { "<Leader>d",     "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = { "n", "x" },      desc = "Add cursor and jump to next cword" },
            { "<Leader>D",     "<Cmd>MultipleCursorsJumpNextMatch<CR>",    mode = { "n", "x" },      desc = "Jump to next cword" },

            { "<Leader>l",     "<Cmd>MultipleCursorsLock<CR>",             mode = { "n", "x" },      desc = "Lock virtual cursors" },
        },
    },
    -- MARKDOWN PREVIEW
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- COPILOT
    { "github/copilot.vim" },

    -- COLORSCHEME
    { 'rose-pine/neovim',       as = 'rose-pine' },
    { "EdenEast/nightfox.nvim", as = 'nightfox' },
})




-- { 'rktjmp/lush.nvim' },
-- {
--     'AlexvZyl/nordic.nvim',
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require 'nordic'.load()
--     end
-- }
-- { "catppuccin/nvim",               as = "catppuccin" },
-- { 'Shatur/neovim-ayu',             as = 'ayu' },
-- { 'folke/tokyonight.nvim',         as = 'tokyonight', },
-- { 'maxmx03/solarized.nvim',        as = 'solarized' },
-- { 'mcchrish/zenbones.nvim',        as = 'zenbones', },
-- { 'bluz71/vim-moonfly-colors',     as = 'moonfly' },
-- { 'blazkowolf/gruber-darker.nvim', as = 'gruber-darker' },
-- {
--     'uloco/bluloco.nvim',
--     lazy = false,
--     priority = 1000,
-- },
-- {
--     "scottmckendry/cyberdream.nvim",
--     lazy = false,
--     priority = 1000,
-- },
-- {
--     'Verf/deepwhite.nvim',
--     lazy = false,
--     priority = 1000,
-- }

-- STATUSLINE
-- { 'nvim-lualine/lualine.nvim', },

-- FILE EXPLORER
-- {
--     "nvim-tree/nvim-tree.lua",
--     version = "*",
--     lazy = false,
--     dependencies = {
--         "nvim-tree/nvim-web-devicons",
--     }
-- },

-- COQ
-- { 'whonore/Coqtail' },

-- CUSTOM COLORSCHEME
-- { dir = '~/TMP/gruber-darker.nvim/',  as = 'gruber-darker' },

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
