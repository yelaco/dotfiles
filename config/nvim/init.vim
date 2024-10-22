call plug#begin('~/.vim/plugged')
Plug 'nvim-tree/nvim-web-devicons'
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

set termguicolors
lua require'colorizer'.setup()

Plug 'tpope/vim-fugitive', { 'on': [] }
command! Gstatus call LazyLoadFugitive('Git status')
command! Gdiff call LazyLoadFugitive('Git diff')
command! Glog call LazyLoadFugitive('Git log')
command! Gblame call LazyLoadFugitive('Git blame')

function! LazyLoadFugitive(cmd)
  call plug#load('vim-fugitive')
  exe a:cmd
endfunction

lua require('init')

set autoindent
set clipboard=unnamedplus

aunmenu PopUp.How-to\ disable\ mouse
aunmenu PopUp.-1-
