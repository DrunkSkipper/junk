set nocompatible
   filetype off
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " alternatively, pass a path where Vundle should install plugins
   "call vundle#begin('~/some/path/here')
   "
   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'

   Plugin 'Valloric/YouCompleteMe'

   Plugin 'lambdalisue/fern.vim'
   Plugin 'lambdalisue/nerdfont.vim'
   Plugin 'lambdalisue/glyph-palette.vim'
   Plugin 'lambdalisue/fern-renderer-nerdfont.vim'
   Plugin 'lambdalisue/fern-git-status.vim'
   Plugin 'andykog/fern-highlight.vim'

   Plugin 'tpope/vim-dispatch'

   Plugin 'tpope/vim-obsession'

   Plugin 'tpope/vim-fugitive'

   Plugin 'morhetz/gruvbox'

   Plugin 'vim-airline/vim-airline'

   "Present in vim 9.0+
   "Plugin 'editorconfig/editorconfig-vim'

   " All of your Plugins must be added before the following line
   call vundle#end()            " required

   " You might have to force true color when using regular vim inside tmux as the
   " colorscheme can appear to be grayscale with "termguicolors" option
   " enabled.
   if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
       let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
         let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
   endif

   syntax on
   set termguicolors
   se background=dark
   let g:gruvbox_italic=1
   let g:gruvbox_contrast_dark="medium"
   colorscheme gruvbox
   filetype plugin indent on
   se encoding=UTF-8
   se ruler
   se number
   se ruler
   se ic
   se hls
   se so=3
   se undofile
   se undodir=~/.vim/undodir
   set tabstop=2
   set shiftwidth=2
   set smarttab
   set expandtab
   set smartindent
   se list
   se listchars=tab:>-,trail:.,extends:>,precedes:<
   se colorcolumn=140
   se showmatch
   se foldcolumn=3
   se viminfo=<50,'1000
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

   let g:netrw_liststyle = 3
   let g:netrw_banner = 0
   let g:netrw_browse_split = 3
   let g:netrw_winsize = 25
   let g:ycm_auto_trigger=1
   let g:ycm_enable_semantic_highlighting=1
   let MY_YCM_HIGHLIGHT_GROUP = {
         \   'typeParameter': 'PreProc',
         \   'parameter': 'Normal',
         \   'variable': 'Normal',
         \   'property': 'Normal',
         \   'enumMember': 'Normal',
         \   'event': 'Special',
         \   'member': 'Normal',
         \   'method': 'Normal',
         \   'class': 'Special',
         \   'namespace': 'Special',
         \ }

   for tokenType in keys( MY_YCM_HIGHLIGHT_GROUP )
     call prop_type_add( 'YCM_HL_' . tokenType,
                       \ { 'highlight': MY_YCM_HIGHLIGHT_GROUP[ tokenType ] } )
   endfor
   hi link YcmInlayHint Comment

   let g:airline#extensions#tabline#enabled = 1

   let g:fern#renderer = "nerdfont"
   nnoremap <C-t> :Fern . -drawer -toggle<CR>

   augroup FernEvents
     autocmd!
     autocmd FileType fern setlocal nonumber
     autocmd FileType fern setlocal foldcolumn=0
   augroup END
