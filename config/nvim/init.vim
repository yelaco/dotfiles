call plug#begin('~/.vim/plugged')
Plug 'nvim-tree/nvim-web-devicons'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

set termguicolors
lua require'colorizer'.setup()

lua require('init')

set autoindent
set clipboard=unnamedplus

aunmenu PopUp.How-to\ disable\ mouse
aunmenu PopUp.-1-
