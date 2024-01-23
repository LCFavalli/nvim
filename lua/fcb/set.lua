vim.opt.nu = true
vim.opt.relativenumber = true

local TAB = 4
vim.opt.tabstop = TAB
vim.opt.softtabstop = TAB
vim.opt.shiftwidth = TAB
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
-- vim.cmd[[autocmd VimEnter * highlight ColorColumn ctermbg=0 guibg=lightgrey]]

------
-- set rtp^="/Users/federicobruzzone/.opam/4.14.0/share/ocp-indent/vim"

-- Disable mousescroll orizontal
vim.cmd(":set mousescroll=ver:1,hor:0")
vim.cmd(":set sidescrolloff=0")

vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- separate vim plugins from neovim in case vim still in use

vim.opt.modeline = false

-- vim.opt.guicursor = "v:block,i:ver25,r:hor20"

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true

vim.opt.foldmethod = "indent" -- "syntax"
vim.opt.foldlevel = 99
vim.opt.foldnestmax = 10

-- vim.opt.cmdheight = 0
-- vim.opt.autochdir = true

-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

vim.opt.listchars = {
    tab = '│·', -- '> '
    lead = '·', -- '.'
    -- extends = '⟩',
    -- precedes = '⟨',
    -- eol = '¶'-- '↲',
    -- nbsp = '␣',
    -- trail = '·' -- '•'
}
vim.opt.list = true
-- function Hi()
--     -- vim.cmd([[hi! link NonText @character]])
--     -- vim.cmd([[hi! link Whitespace @todo]])
--     vim.cmd([[hi! link Whitespace @character]])
-- end
-- vim.cmd[[autocmd VimEnter * lua Hi()]]
