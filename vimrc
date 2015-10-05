set nocompatible              " be iMproved, required
filetype plugin on

set expandtab
set shiftwidth=2
set softtabstop=2
set cursorline
set number
set laststatus=2
let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mxw/vim-jsx' " JSX support
Plugin 'pangloss/vim-javascript'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Nopik/vim-nerdtree-direnter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
set background=dark
colorscheme PaperColor

" The Silver Searcher
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:syntastic_javascript_checkers = ['eslint']

map <S-Enter> o<ESC>k
map <Enter> O<ESC>j
map <Leader>s <plug>NERDTreeTabsToggle<CR>
map <Leader>p :CtrlP<CR>

if has("gui_macvim")
  macmenu File.Print key=<nop> " Who uses print anyways?
  set guifont=Menlo:h14
endif
