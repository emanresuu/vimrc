" :set colorcolumn=81
"set ruler
set number "enable line numbers
set relativenumber "enables relative line numbers
set nowrap "disable text wrapping

" set system clipboard as default
set clipboard=unnamedplus

set expandtab "insert space whenever the tab key is pressed
set tabstop=3 "determines how many spaces are inserted when the tab key is pressed
set shiftwidth=3 "the number of spaces an existing line will indent using >> and <<

" vim-plug settings
" installs vim-plug, a plugin manager, iff it is not already installed
" requires the package curl
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif
" list of plugins
call plug#begin('~/.vim/plugged')
   Plug 'tpope/vim-vinegar'
   Plug 'tpope/vim-commentary'
   Plug 'scrooloose/syntastic'
call plug#end()

" vim-commentary settings
"autocmd FileType apache setlocal commentstring=#\ %s

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = ['validator']
let g:syntastic_javascript_checkers = ['jshint']

" enable copy paste
"function! XTermPasteBegin()
"   set pastetoggle=<Esc>[201~
"   set paste
"   return ""
"endfunction

" enable mouse
set mouse=v
"set selectmode+=mouse

" modify colours
"set t_Co=256
syntax off
highlight LineNr ctermfg=255
hi CursorLineNr guifg=#050505
