vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
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

------
vim.opt.modeline = false

vim.opt.guicursor = "v:block,i:ver25,r:hor20"

vim.opt.splitbelow = true
vim.opt.splitright = true
-- vim.opt.termguicolors = true

-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

vim.opt.listchars = {
    tab = '│·', -- '> '
    lead = '·',
    extends = '⟩',
    precedes = '⟨',
    -- eol = '¶'-- '↲',
    -- nbsp = '␣',
    -- trail = '·'
}
vim.opt.list = true
-- function Hi()
--     -- vim.cmd([[hi! link NonText @character]])
--     -- vim.cmd([[hi! link Whitespace @todo]])
--     vim.cmd([[hi! link Whitespace @character]])
-- end
-- vim.cmd[[autocmd VimEnter * lua Hi()]]

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                          -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"                          -- hyphenated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" })       -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- separate vim plugins from neovim in case vim still in use

