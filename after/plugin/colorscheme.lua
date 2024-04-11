-- =============================================================================
require('rose-pine').setup({
        variant = 'main', --- @usage 'auto'|'main'|'moon'|'dawn'
        -- disable_background = true,
        -- disable_float_background = true,
        -- groups = {
        --     background = 'NONE',
        --     background_nc = 'NONE',
        -- },
        -- highlight_groups = {
        --     -- Blend colours against the "base" background
        --     CursorLine = { bg = 'pine', blend = 10 },
        --     StatusLine = { fg = 'pine', bg = 'pine', blend = 10 },
        -- }
        -- disable_italics = true,
})
-- =============================================================================
require("tokyonight").setup({
        style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        -- transparent = true, -- Enable this to disable setting the background color
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
        -- on_highlights = function(hl, colors) hl.LineNr = {
        --       fg = colors.yellow
        --     }
        -- end
        -- -----------------------------------------------
})
-- =============================================================================
require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = {     -- :h background
                light = "latte",
                dark = "mocha",
        },
        -- transparent_background = false, -- disables setting the background color.
        -- show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
        -- term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
        -- dim_inactive = {
        --     enabled = false,            -- dims the background color of inactive window
        --     shade = "dark",
        --     percentage = 0.15,          -- percentage of the shade to apply to the inactive window
        -- },
        no_italic = false,               -- Force no italic
        no_bold = false,                 -- Force no bold
        no_underline = false,            -- Force no underline
        styles = {                       -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { "italic" }, -- Change the style of comments
                conditionals = { "italic" },
                -- loops = {},
                -- functions = {},
                -- keywords = {},
                -- strings = {},
                -- variables = {},
                -- numbers = {},
                -- booleans = {},
                -- properties = {},
                -- types = {},
                -- operators = {},
        },
        -- color_overrides = {
        --     mocha = {
        -- base = "#000000",
        -- mantle = "#000000",
        -- crust = "#000000",
        --     },
        -- },
        custom_highlights = {},
        integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
        },
})
-- =============================================================================
vim.g.moonflyCursorColor = true
vim.g.moonflyWinSeparator = 2
vim.g.moonflyTransparent = true
-- =============================================================================
require('gruber-darker').setup({
        bold = true,
        invert = {
                signs = false,
                tabline = false,
                visual = false,
        },
        italic = {
                strings = false, -- true,
                comments = true,
                operators = false,
                folds = true,
        },
        undercurl = true,
        underline = true,
})
-- =============================================================================
require('ayu').setup({
        mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        -- overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
        -- overrides = {
        --     Normal = { bg = "None" },
        --     ColorColumn = { bg = "None" },
        --     SignColumn = { bg = "None" },
        --     Folded = { bg = "None" },
        --     FoldColumn = { bg = "None" },
        --     CursorLine = { bg = "None" },
        --     CursorColumn = { bg = "None" },
        --     WhichKeyFloat = { bg = "None" },
        --     VertSplit = { bg = "None" },
        -- },
})
-- vim.cmd('set background=light')
-- =============================================================================
local set_hl_for_floating_window = function()
        -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- FORCE TRANSPARENCY
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal', })
        vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })

        -- Transparent background for Diagnostic virtual text
        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { link = "DiagnosticError" })
        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { link = "DiagnosticWarn" })
        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { link = "DiagnosticInfo" })
        vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { link = "DiagnosticHint" })
end
vim.api.nvim_create_autocmd('ColorScheme', {
        pattern = '*',
        callback = set_hl_for_floating_window,
})
-- set_hl_for_floating_window()
-- =============================================================================
function ColorMyPencils(color)
        color = color or "rose-pine"
        vim.cmd.colorscheme(color)
        if color == "default" then
                vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" }) -- vim.cmd('hi SignColumn ctermbg=0 guibg=black')
                vim.cmd('highlight GitSignsAdd guibg=NONE guifg=green')
                vim.cmd('highlight GitSignsChange guibg=NONE guifg=yellow')
                vim.cmd('highlight GitSignsDelete guibg=NONE guifg=red')
                vim.cmd('highlight GitSignsChangeDelete guibg=NONE guifg=purple')
        end
end

-- ColorMyPencils('rose-pine')
-- ColorMyPencils('tokyonight')
-- ColorMyPencils('catppuccin')
-- ColorMyPencils('gruber-darker')
-- ColorMyPencils('moonfly') -- black
-- ColorMyPencils('ayu') -- dark gray


-- ColorMyPencils('zenbones')
-- ColorMyPencils('rosebones')

ColorMyPencils("default")

-- ==== Defult =====
-- ColorMyPencils('industry') -- black
-- ColorMyPencils('torte') -- black
-- ColorMyPencils('slate') -- gray
-- ColorMyPencils('shine') -- light

-- ========================= BEST LIGHT THEME ==================================
-- -- vim.g.tokyobones = {transparent_background = true}
-- vim.cmd('set background=light')
-- vim.cmd.colorscheme('tokyobones')
