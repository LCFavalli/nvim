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
  { "neovim/nvim-lspconfig" },        -- enable LSP
  { "williamboman/mason.nvim" },      -- simple to use language server installer
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
  { 'nvim-treesitter/nvim-treesitter'}, -- , commit = "180e1ca385442e35e1d18420221a148c5e045671" },
  { "nvim-treesitter/nvim-treesitter-context"},
  -- use("nvim-treesitter/playground")

  -- COLORSCHEME
  { 'mcchrish/zenbones.nvim', requires = 'rktjmp/lush.nvim' }, -- white colorscheme
  { 'rose-pine/neovim', as = 'rose-pine', },
  { 'folke/tokyonight.nvim', as = 'tokyonight', },
  { "catppuccin/nvim", as = "catppuccin" },
  { 'bluz71/vim-moonfly-colors', as = 'moonfly' },
  { 'blazkowolf/gruber-darker.nvim', as = 'gruber-darker' },
  { 'Shatur/neovim-ayu', as = 'ayu' },



  -- STATUSLINE
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- GIT
  { "lewis6991/gitsigns.nvim" },
  { "tpope/vim-fugitive" },

  -- FILE NAVIGATION
  { "theprimeagen/harpoon" },

  -- COMMENT
  { 'numToStr/Comment.nvim' },

  -- COQ
  { 'whonore/Coqtail' },

  -- LATEX PREVIEW
  { "lervag/vimtex" },

  -- MARKDOWN PREVIEW
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  -- UNDO TREE
  { "mbbill/undotree" },

  -- ZEN MODE
  { "folke/zen-mode.nvim" },

  -- COPILOT
  { "github/copilot.vim", commit = "f2a4acd62587c62910bda0b79405c585af43c002" }

})
