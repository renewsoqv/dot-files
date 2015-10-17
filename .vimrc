" Start plugin management
" ===============================
call plug#begin('~/.vim/plugged')

" Essentials
Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin.

" Utilities
Plug 'junegunn/vim-xmark', { 'do': 'make' } " Markdown preview on OS X

" Asthetics
Plug 'junegunn/rainbow_parentheses.vim'

" End plugin management
" ===============================
call plug#end()

" remove lixos de compatibilidade com o VI
set nocompatible
set modelines=0

" mapeia saida para o visual mode para as teclas j+k
inoremap jk <ESC>

" remapeia a leader key para a barra de espaço
let mapleader = "\<Space>"
filetype on " Automatically detect file typess.

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" basic config
filetype plugin indent on
syntax on
set history=256  " Number of things to remember in history
set shell=/bin/zsh
set guifont=Menlo:h14
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
"set relativenumber
set undofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set wrap
set linebreak
set nolist
set formatoptions=qrn1
set spell spelllang=en_us
set nospell
set colorcolumn=250
set textwidth=79
set splitbelow
set splitright

" remaps
nnoremap / /\v
vnoremap / /\v
"inoremap <F1> <ESC>
"nnoremap <F1> <ESC>
"vnoremap <F1> <ESC>
nnoremap <leader>s :set spell!
vnoremap . :norm.<CR>
map <C-e> :NERDTreeToggle<CR>
map <Left> :tabp<CR>
map <Right> :tabn<CR>
map <Up> :tabe
" get the word under the cursor, and searches for it in the current directory
" and all subdirectories, opening the quickfix window when done
map <F2> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F1> :Helptags<CR>
"save on focus lost
au FocusLost * :wa

" Aesthetics
colorscheme railscasts
"colorscheme solarized 
set background=dark

" Leader shortcuts
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>A V`]y "copy file content
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Split window
nnoremap <leader>sv <C-w>v
nnoremap <leader>sh <C-w>s
nnoremap <leader>w <C-w><C-w>

nnoremap <leader>j VipJ
nnoremap <leader>q gqip
nnoremap <leader>f 1z=
nnoremap <leader>s ]s
"nnoremap <leader>u :!git pull website master && git commit -am 'Standard commit.' && git push website master<CR><CR>
"nnoremap <leader>p :!git commit -am 'Standard commit.' && git push origin "master<CR><CR>
nnoremap <leader>d :read !date<CR>
nnoremap <leader>r :!!<CR>
nnoremap <leader>m :normal @a
"nnoremap <leader>l :CtrlP<CR>
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <leader>nt :NERDTree<CR>
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>
nnoremap <leader>pa :set nopaste!<CR>
nnoremap <leader>rc :so $MYVIMRC<CR>
"nnoremap <leader>b :BlogSave publish<CR>
"nnoremap <leader>r :! /Users/daniel/Documents/whup.sh<CR><CR>
nnoremap <leader>h :set ft=HTML<CR><CR>

"""""""" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

""""""" Plugins configuration
" Command-T - https://github.com/wincent/Command-T
nnoremap <silent> <Leader>t :CommandT<CR>
nnoremap <silent> <Leader>b :CommandTBuffer<CR>

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" NERdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Javascript Libraries - https://github.com/othree/javascript-libraries-syntax.vim
"let g:used_javascript_libs = 'underscore,angularjs,angularui,angularuirouter'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularui = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularuirouter = 1
autocmd BufReadPre *.js let b:javascript_lib_use_react = 1

" https://github.com/pangloss/vim-javascript - JavaScript bundle for vim, this
" bundle provides syntax and indent plugins.
let g:javascript_enable_domhtmlcss = 1
let g:javascript_ignore_javaScriptdoc = 0
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

""GitGutter
"let g:gitgutter_enabled = 0 "To turn off vim-gitgutter by default
"let g:gitgutter_signs = 0 "To turn off signs by default
"let g:gitgutter_highlight_lines = 1 "To turn on line highlighting by default

""Markdow
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

