--BTW make sure that all dependencies are installed locally (latexmk, biber)

-- show compiled output with okular
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
