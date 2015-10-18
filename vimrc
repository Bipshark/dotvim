set nocompatible              " be iMproved, required
set expandtab
set shiftwidth=2
set softtabstop=2
set cursorline
set number
set laststatus=2
set colorcolumn=80
let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
"Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'moll/vim-bbye'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/neocomplete.vim'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

filetype plugin indent on
set background=dark
colorscheme PaperColor

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

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
let g:airline#extensions#tabline#enabled = 1

map <S-Enter> o<ESC>k
map <Enter> O<ESC>j
"map <Leader>s <plug>NERDTreeTabsToggle<CR>
map <Leader>p :CtrlP<CR>
nmap <leader>q :bp <BAR> bd #<CR>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

if has("gui_macvim")
  set guifont=Menlo:h14
endif
