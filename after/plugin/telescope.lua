local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})

vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>ws', builtin.lsp_workspace_symbols, {})


-- vim.keymap.set('n', '<leader>ps', function()
--     builtin.grep_string({ search = vim.fn.input("Grep > ") })
-- end)

vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='none'})
vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='none'})
