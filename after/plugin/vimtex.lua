local g = vim.g

g.vimtex_view_method = 'zathura'
g.vimtex_view_general_viewer = 'zathura'
g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
g.vimtex_compiler_method = 'latexmk'

g.vimtex_quickfix_ignore_filters = {
    'Underfull',
    'Overfull',
}

g.maplocalleader = ','
