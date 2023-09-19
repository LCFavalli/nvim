require("tokyonight").setup({
    style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    -- transparent = false, -- Enable this to disable setting the background color
    -- styles = {
    -- -- Style to be applied to different syntax groups
    -- -- Value is any valid attr-list value for `:help nvim_set_hl`
    -- comments = { italic = true },
    -- keywords = { italic = true },
    -- functions = {},
    -- variables = {},
    -- },

    -- ----- Grey background color in `day` mode -----
    -- on_colors = function (colors)
    --     colors.bg = "#353535"
    -- end;
    -- on_highlights = function(hl, colors)
    --     hl.LineNr = {
    --       fg = colors.yellow
    --     }
    -- end
    -- -----------------------------------------------
})

require('rose-pine').setup({
    -- disable_float_background = true,
    -- disable_italics = true,
    variant = 'auto', --- @usage 'auto'|'main'|'moon'|'dawn'
    -- disable_background = true,
    -- groups = {
    --     background = 'NONE',
    --     background_nc = 'NONE',
    -- },
    -- highlight_groups = {
    --     -- Blend colours against the "base" background
    --     CursorLine = { bg = 'pine', blend = 10 },
    --     StatusLine = { fg = 'pine', bg = 'pine', blend = 10 },
    -- }
})

local set_hl_for_floating_window = function()
    vim.api.nvim_set_hl(0, 'NormalFloat', {
        link = 'Normal',
    })
    vim.api.nvim_set_hl(0, 'FloatBorder', {
        bg = 'none',
    })
    -- vim.api.nvim_set_hl(0, 'Normal', {
    --     bg = 'none',
    -- })
end
vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = '*',
    callback = set_hl_for_floating_window,
})
set_hl_for_floating_window()

function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
end
-- ColorMyPencils('tokyonight')
-- ColorMyPencils('rose-pine')

vim.cmd('set background=light')
-- vim.g.tokyobones = {transparent_background = true}
-- ColorMyPencils('zenbones')
-- ColorMyPencils('zenwritten')
-- ColorMyPencils('rosebones')
ColorMyPencils('tokyobones')
