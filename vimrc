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
set splitright
set splitbelow
set background=dark
set nowrap
set autoread
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set foldmethod=syntax
set nofen
let mapleader = " "

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mxw/vim-jsx' " JSX support
" Plugin 'NLKNguyen/papercolor-theme'
Plugin 'morhetz/gruvbox'
Plugin 'pangloss/vim-javascript'
" Plugin 'NLKNguyen/papercolor-theme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tomtom/tcomment_vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'moll/vim-bbye'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'
" Plugin 'flazz/vim-colorschemes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'sickill/vim-pasta'
Plugin 'tpope/vim-fugitive'
Plugin 'elzr/vim-json'
Plugin 'dag/vim2hs'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end()

filetype plugin indent on
colorscheme gruvbox

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:ctrlp_working_path_mode = 0
let g:airline_section_b = '%{getcwd()}'
" let g:indent_guides_enable_on_vim_startup = 1
"
" " Map the conceal characters to their expanded forms.
" autocmd FileType javascript inoremap <silent> @! <C-r>=syntax_expand#expand("@!", "this")<CR>
" autocmd FileType javascript inoremap <silent> <! <C-r>=syntax_expand#expand("<!", "return")<CR>
" autocmd FileType javascript inoremap <silent> fn! <C-r>=syntax_expand#expand("fn!", "function")<CR>
"
" set conceallevel=1
" set concealcursor=nvic
" let g:javascript_conceal_function = "λ"
" let g:javascript_conceal_this = "@"
" let g:javascript_conceal_return = "<"
" let g:javascript_conceal_null = "ø"
" highlight Conceal cterm=bold ctermbg=NONE ctermfg=darkblue
"
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
let g:vim_json_syntax_conceal = 0

map <S-Enter> o<ESC>k
map <Enter> O<ESC>j
"map <Leader>s <plug>NERDTreeTabsToggle<CR>
map <Leader>p :CtrlP<CR>
map <Leader>b :CtrlPBuffer<CR>
" go to eol
map € $
nmap <Leader>q :bp <BAR> bd #<CR>

noremap <C-Tab> :bnext<CR>
noremap <S-C-Tab> :bprevious<CR>
inoremap <C-Tab> <Esc>:bnext<CR>
inoremap <S-C-Tab> <Esc>:bprevious<CR>

nnoremap <Leader><Left> <C-W><C-H>
nnoremap <Leader><Right> <C-W><C-L>
nnoremap <Leader><Up> <C-W><C-K>
nnoremap <Leader><Down> <C-W><C-J>

map <Leader>gb :Gblame<CR>
map <silent> <Leader>e :Errors<CR>

if has("gui_macvim")
  set guifont=Menlo:h12
endif


