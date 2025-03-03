set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'junegunn/fzf'

Plugin 'tpope/vim-dispatch'

Plugin 'tpope/vim-obsession'

Plugin 'editorconfig/editorconfig-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

filetype plugin indent on
se ruler
syntax on
set termguicolors
se number
se ruler
se ic
se background=dark
se hls
colorscheme monokai
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
se list
se listchars=tab:>-,trail:.,extends:>,precedes:<
se colorcolumn=80
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
