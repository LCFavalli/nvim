-- =============================================================================
require('rose-pine').setup({
    variant = 'main', --- @usage 'auto'|'main'|'moon'|'dawn'
    disable_background = false,
    disable_italics = true,
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
})
-- =============================================================================
-- local set_hl_for_floating_window = function()
--     -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- FORCE TRANSPARENCY
--     -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--     vim.api.nvim_set_hl(0, 'NormalFloat', { link = "Normal", })
--     vim.api.nvim_set_hl(0, 'FloatBorder', { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
--
--     -- Transparent background for Diagnostic virtual text
--     vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { link = "DiagnosticError" })
--     vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { link = "DiagnosticWarn" })
--     vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { link = "DiagnosticInfo" })
--     vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { link = "DiagnosticHint" })
-- end
-- vim.api.nvim_create_autocmd('ColorScheme', {
--     pattern = '*',
--     callback = set_hl_for_floating_window,
-- })
-- =============================================================================
function ColorMyPencils(color, version)
    vim.cmd.colorscheme(color)

    if string.sub(color, 1, 6) == "base16" then
        vim.cmd('highlight LineNr guibg=NONE guifg=NONE')
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" }) -- vim.cmd('hi SignColumn ctermbg=0 guibg=black')
        vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "None", fg = "White" })
        vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "None", fg = "White" })
        vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "None", fg = "White" })
        vim.api.nvim_set_hl(0, "GitSignsChangeDelete", { bg = "None", fg = "White" })
    end

    if color == "vim" or (color == "default" and version == "0.9.0") then
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "None" }) -- vim.cmd('hi SignColumn ctermbg=0 guibg=black')
        vim.cmd('highlight GitSignsAdd guibg=NONE guifg=green')
        vim.cmd('highlight GitSignsChange guibg=NONE guifg=yellow')
        vim.cmd('highlight GitSignsDelete guibg=NONE guifg=red')
        vim.cmd('highlight GitSignsChangeDelete guibg=NONE guifg=purple')

        -- Enable italic
        -- vim.cmd('highlight Comment cterm=italic gui=italic')
        -- vim.cmd('highlight Conditional cterm=italic gui=italic')
        -- vim.cmd('highlight Repeat cterm=italic gui=italic')
        -- vim.cmd('highlight Statement cterm=italic gui=italic')

        -- vim.cmd('highlight Type cterm=italic gui=italic')
        -- vim.cmd('highlight Function cterm=italic gui=italic')
        -- vim.cmd('highlight Identifier cterm=italic gui=italic')
        -- vim.cmd('highlight PreProc cterm=italic gui=italic')
        -- vim.cmd('highlight Special cterm=italic gui=italic')
        -- vim.cmd('highlight Todo cterm=italic gui=italic')
        -- vim.cmd('highlight Underlined cterm=italic gui=italic')
        -- vim.cmd('highlight Label cterm=italic gui=italic')
        -- vim.cmd('highlight SpecialKey cterm=italic gui=italic')
        -- vim.cmd('highlight NonText cterm=italic gui=italic')
        -- vim.cmd('highlight SpecialComment cterm=italic gui=italic')
        -- vim.cmd('highlight SpecialChar cterm=italic gui=italic')
        -- vim.cmd('highlight SpecialComment cterm=italic gui=italic')
        -- vim.cmd('highlight Special cterm=italic gui=italic')
    end
end

-- ColorMyPencils("default") -- habamax
-- ColorMyPencils('rose-pine')
ColorMyPencils('vim')
