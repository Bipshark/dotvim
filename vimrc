set nocompatible              " be iMproved, required
set expandtab
set shiftwidth=2
set softtabstop=2
set cursorline
set number
set laststatus=2
set colorcolumn=80
set hidden
set showmatch
set nobackup
set noswapfile
let mapleader = ","

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mxw/vim-jsx' " JSX support
Plugin 'pangloss/vim-javascript'
"Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tomtom/tcomment_vim'
"Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'moll/vim-bbye'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
Plugin 'flazz/vim-colorschemes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sickill/vim-pasta'
call vundle#end()

filetype plugin indent on
set background=dark
colorscheme hybrid

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:ctrlp_working_path_mode = 0
let g:airline_section_b = '%{getcwd()}'
let g:neocomplcache_enable_at_startup = 1
" let g:indent_guides_enable_on_vim_startup = 1

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
" go to eol
map € $
nmap <leader>q :bp <BAR> bd #<CR>

nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

if has("gui_macvim")
  set guifont=Menlo:h14
endif
