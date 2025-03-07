filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-dispatch'

Plugin 'tpope/vim-obsession'

Plugin 'vim-airline/vim-airline'

Plugin 'morhetz/gruvbox'

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
colorscheme gruvbox
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

let g:airline#extensions#tabline#enabled = 1

let g:ycm_enable_semantic_highlighting=1
let g:ycm_enable_inlay_hints=1

nnoremap <leader>jg :YcmCompleter GoTo<CR>
nnoremap <leader>jt :YcmCompleter GetType<CR>
nnoremap <leader>jr :YcmCompleter RefactorRename.
nnoremap <leader>jf :YcmCompleter FixIt<CR>
nnoremap <leader>jd :YcmDiags<CR>
nnoremap <leader>jD :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jh :YcmCompleter GoToAlternateFile<CR>
nnoremap <leader>pp :set paste!<CR>
nnoremap <leader>s :Obsess<CR>
nnoremap <leader>t :term<CR>
nnoremap <leader>g :Git.
nnoremap <leader>b :Git blame<CR>
nnoremap <leader>tt :set expandtab!<CR>
nnoremap <leader>n :set number!<CR>
