require("rose-pine").setup({
    variant = "auto", -- auto, main, moon, or dawn
    dark_variant = "main", -- main, moon, or dawn
    styles = {
        bold = true,
        italic = true,
        transparency = false,
    },
    palette = {
        main = {
            base = '#232627',
        }
    },
})

-- vim.cmd('set background=light')
vim.cmd('colorscheme rose-pine')
