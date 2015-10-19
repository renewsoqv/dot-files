if has("win32")
  let &runtimepath = substitute(&runtimepath,'\(Documents and Settings\|Users\)[\\/][^\\/,]*[\\/]\zsvimfiles\>','.vim','g')
endif

" ==============================
" Start plugin management
" ===============================
call plug#begin('~/.vim/plugged')

" Essentials
Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin.
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " NERD tree will be  loaded on the first invocation of NERDTreeToggle command
Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the 'gutter' (sign column) 
Plug 'scrooloose/syntastic' " Check for code error, amazing!
Plug 'Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status flags
Plug 'sjl/gundo.vim' " Gundo.vim is Vim plugin to visualize your Vim undo tree.
Plug 'tpope/vim-fugitive' " GIT
Plug 'majutsushi/tagbar' "browse the tags of the current file and get an overview of its structure.
Plug 'tpope/vim-sensible' " a universal set of defaults that (hopefully)  everyone can agree on.
Plug 'ervandew/supertab' " Supertab is a vim plugin which allows you to use  <Tab> for all your insert completion needs (:help ins-completion).
Plug 'bling/vim-airline' "Lean & mean status/tabline for vim that's light as air.
Plug 'bling/vim-bufferline' "Super simple vim plugin to show the list of buffers in the command bar.
Plug 'terryma/vim-multiple-cursors' " Sublime Text's awesome multiple selection feature into Vim
Plug 'tpope/vim-projectionist' " Projectionist provides granular project configuration using 'projections' 
Plug 'tpope/vim-surround'  "  Surround.vim is all about 'surroundings': parentheses, brackets, quotes, XML tags, and more.
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'} "YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for Vim. 
Plug 'kien/ctrlp.vim' "Amazing search plugin

 " Utilities
Plug 'tpope/vim-commentary' "Comment stuff out. 
Plug 'junegunn/vim-xmark', { 'do': 'make' } " Markdown preview on OS X
Plug 'junegunn/tmux-complete.vim' " Vim plugin for insert mode completion of words in adjacent tmux panes
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] } "Browse GitHub events (user dashboard, user/repo activity) in Vim.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' } "fzf is a general-purpose command-line fuzzy finder.
Plug 'junegunn/fzf.vim'
Plug 'wakatime/vim-wakatime' "Vim plugin to quantify your coding with  automatic time tracking and metrics about your programming.
Plug 'mattn/webapi-vim' " An Interface to WEB APIs.
Plug 'Shougo/vimshell.vim'
Plug 'mattn/gist-vim'
Plug 'Raimondi/delimitMate' "This plug-in provides automatic closing of quotes, parenthesis, brackets, etc.

" Leverage the power of Vim's compiler plugins without being bound by  synchronicity. Kick off builds and test suites using one of several
" asynchronous adapters (including tmux, screen, iTerm, Windows, and a headless  mode), and when the job completes, errors will be loaded and parsed
" automatically.
 Plug 'tpope/vim-dispatch' 

 " Asthetics
Plug 'junegunn/rainbow_parentheses.vim' " color parentheses according to  depth

 " Languages
Plug 'kchmck/vim-coffee-script'
Plug 'junegunn/vim-journal' " syntax plugin for plain text files.
Plug 'kurko/smartest.vim' "Make your Vim smart when running your tests.
Plug 'burnettk/vim-angular'
Plug 'matthewsimo/angular-vim-snippets'
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'tpope/vim-endwise' 
Plug 'slim-template/vim-slim'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'} " Sparkup lets you write HTML code faster
Plug 'tpope/vim-bundler' " This is a lightweight bag of Vim goodies for Bundler
Plug 'tpope/vim-rake' 
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-markdown' " sintax highlight for markdown
Plug 'skalnik/vim-vroom' "Run your Ruby tests! Supports RSpec, Test::Unit/MiniTest, Konacha, and Cucumber.
Plug 'cmather/vim-meteor-snippets'
Plug 'mustache/vim-mustache-handlebars'
Plug 'bonsaiben/bootstrap-snippets'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'garbas/vim-snipmate'

" Color Schemes
Plug 'junegunn/seoul256.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'jpo/vim-railscasts-theme'
Plug 'KabbAmine/yowish.vim'
" End plugin management
" ===============================
call plug#end()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
  
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
   
" Enable syntax highlighting
syntax on

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
set expandtab " tabs are converted to spaces, use only when required

" basic config
set history=256  " Number of things to remember in history
set shell=/bin/zsh
set guifont=Menlo:h14
set encoding=utf-8
set scrolloff=3
set undofile
set sm             " show matching braces, somewhat annoying...
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" set nostartofline

set showmode
set showcmd " Show partial commands in the last line of the screen
set hidden " window and switch from an unsaved buffer without saving it first
set wildmenu " Better command-line completion
set wildmode=longest:full,full
set wildignore+=tags,.*.un~,*.pyc " ignore this files
set visualbell " Use visual bell instead of beeping when doing something wrong

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
" set t_vb=

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2

set ttyfast
set ruler " Display the cursor position on the last line of the screen or in the status line of a window
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and start of insert action
set laststatus=2 " Always display the status line, even if only one window is displayed
set number " Display line numbers on the left
"set relativenumber
set notimeout ttimeout ttimeoutlen=50 " Quickly time out on keycodes, but never time out on mappings
set timeoutlen=1200 " A little bit more time for macros

" Enable use of the mouse for all modes
" set mouse=a

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

set gdefault
set incsearch
set showmatch  " Show matching brackets.
set hlsearch " Highlight searches
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

au FocusLost * :wa "save on focus lost

" If on GUI and not on terminal
if !has("gui_running") && $DISPLAY == '' || !has("gui")
  set mouse= " show mouse cursor
endif

" FUNCTIONS
" =========
if has('eval')
  function! OpenURL(url)
    if has("win32")
      exe "!start cmd /cstart /b ".a:url.""
    elseif $DISPLAY !~ '^\w'
      exe "silent !tpope browse \"".a:url."\""
    elseif exists(':Start')
      exe "Start tpope browse -T \"".a:url."\""
    else
      exe "!tpope browse -T \"".a:url."\""
    endif
    redraw!
  endfunction
  
  command! -nargs=1 OpenURL :call OpenURL(<q-args>)
  
  " open URL under cursor in browser
  nnoremap gb :OpenURL <cfile><CR>
  nnoremap gA :OpenURL http://www.answers.com/<cword><CR>
  nnoremap gG :OpenURL http://www.google.com/search?q=<cword><CR>
  nnoremap gW :OpenURL http://en.wikipedia.org/wiki/Special:Search?search=<cword><CR>
endif


" ===========
" KEYBINDINGS
" ===========

" F1 ~ f12
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
" map <F3> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR> "search word under cursor
" nmap <F4> :Helptags<CR>
nnoremap <F5> :GundoToggle<CR>
nmap <F3> :TagbarToggle<CR>


" special char's 
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
nnoremap / /\v
vnoremap / /\v
vnoremap . :norm.<CR>

" preventing annoying error's
cmap W w
cmap Q q
cmap Wq wq
vnoremap <c-r> :redo<CR>
nnoremap <leader>s :set spell!
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,  which is the default
map Y y$
map <C-e> :NERDTreeToggle<CR>
map <Left> :tabp<CR>
map <Right> :tabn<CR>
map <Up> :tabe

" Use <F11> to toggle between 'paste' and 'nopaste'
" set pastetoggle=<F11>
" Keyboard mapping for numeric keypad
imap <Esc>OM <c-m>
 map <Esc>OM <c-m>
imap <Esc>OP <nop>
 map <Esc>OP <nop>
imap <Esc>OQ /
 map <Esc>OQ /
imap <Esc>OR *
 map <Esc>OR *
imap <Esc>OS -
 map <Esc>OS -

imap <Esc>Ol +
imap <Esc>Om -
imap <Esc>On ,
imap <Esc>Op 0
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Oz 0

" ==========
" Aesthetics
" ==========

"colorscheme railscasts
"colorscheme solarized 
set background=dark

"""""" seoul256 (dark):
" Range:   233 (darkest) ~ 239 (lightest)
"  Default: 237
let g:seoul256_background = 233
" colo seoul256
" colo solarized
" colo molokai 
colo railscasts

" Leader shortcuts
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>A V`]y "copy file content
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Split window
nnoremap <leader>v <C-w>v
nnoremap <leader>h <C-w>s
nnoremap <leader>w <C-w><C-w>

nnoremap <leader>j VipJ
nnoremap <leader>q gqip
nnoremap <leader>f 1z=
nnoremap <leader>s ]s
"nnoremap <leader>u :!git pull website master && git commit -am 'Standard commit.' && git push website master<CR><CR>
"nnoremap <leader>p :!git commit -am 'Standard commit.' && git push origin "master<CR><CR>
nnoremap <leader>p :!git commit -am 'Updatefile.' && git push origin_hub master<CR><CR>
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
set backupdir=~/.vim/tmp/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

""""""" Plugins configuration
"CTRl-P search plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<c-x>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Exclude files and directories using Vim's wildignore and CtrlP's own
"g:ctrlp_custom_ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"Use a custom file listing command:
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERdTree - Open it automatically if no files specified.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Style for NerdTree git plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" ----------------------------------------------------------------------------
" vimawesome.com
" ----------------------------------------------------------------------------
function! VimAwesomeComplete() abort
  let prefix = matchstr(strpart(getline('.'), 0, col('.') - 1), '[.a-zA-Z0-9_/-]*$')
  echohl WarningMsg
  echo 'Downloading plugin list from VimAwesome'
  echohl None
ruby << EOF
  require 'json'
  require 'open-uri'
  
  query = VIM::evaluate('prefix').gsub('/', '%20')
  items = 1.upto(max_pages = 3).map do |page|
  Thread.new do
    url  = "http://vimawesome.com/api/plugins?page=#{page}&query=#{query}"
    data = open(url).read
    json = JSON.parse(data, symbolize_names: true)
    json[:plugins].map do |info|
      pair = info.values_at :github_owner, :github_repo_name
      next if pair.any? { |e| e.nil? || e.empty? }
      {word: pair.join('/'),
       menu: info[:category].to_s,
       info: info.values_at(:short_desc, :author).compact.join($/)}
      end.compact
    end
  end.each(&:join).map(&:value).inject(:+)
  VIM::command("let cands = #{JSON.dump items}")
EOF
  if !empty(cands)
    inoremap <buffer> <c-v> <c-n>
    augroup _VimAwesomeComplete
      autocmd!
      autocmd CursorMovedI,InsertLeave * iunmap <buffer> <c-v>
              \| autocmd! _VimAwesomeComplete
    augroup END
    
    call complete(col('.') - strchars(prefix), cands)
  endif
  return ''
endfunction

augroup VimAwesomeComplete
  autocmd!
  autocmd FileType vim inoremap <c-x><c-v> <c-r>=VimAwesomeComplete()<cr>
augroup END


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

  " LANGUAGES
  " =========
if has("autocmd")
  " Filetypes (au = autocmd)
  au FileType helpfile set nonumber      " no line numbers when viewing help
  au FileType helpfile nnoremap <buffer><cr> <c-]> " Enter selects subject
  au FileType helpfile nnoremap <buffer><bs> <c-T> " Backspace to go back
  
  ""Markdow
  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  
  autocmd FileType sh,zsh,csh,tcsh        inoremap <silent> <buffer> <C-X>! #!/bin/<C-R>=&ft<CR>
  autocmd FileType sh,zsh,csh,tcsh        let &l:path = substitute($PATH, ':', ',', 'g')
  autocmd FileType perl,python,ruby       inoremap <silent> <buffer> <C-X>! #!/usr/bin/env<Space><C-R>=&ft<CR>
  autocmd FileType c,cpp,cs,java,perl,javscript,php,aspperl,tex,css let b:surround_101 = "\r\n}"
  autocmd FileType apache       setlocal commentstring=#\ %s
  autocmd FileType cucumber let b:dispatch = 'cucumber %' | imap <buffer><expr> <Tab> pumvisible() ? "\<C-N>" : (CucumberComplete(1,'') >= 0 ? "\<C-X>\<C-O>" : (getline('.') =~ '\S' ? ' ' : "\<C-I>"))
  autocmd FileType git,gitcommit setlocal foldmethod=syntax foldlevel=1
  autocmd FileType gitcommit setlocal spell
  autocmd FileType gitrebase nnoremap <buffer> S :Cycle<CR>
  autocmd FileType help setlocal ai fo+=2n | silent! setlocal nospell
  autocmd FileType help nnoremap <silent><buffer> q :q<CR>
  autocmd FileType html setlocal iskeyword+=~ | let b:dispatch = ':OpenURL %'
  autocmd FileType lua  setlocal includeexpr=substitute(v:fname,'\\.','/','g').'.lua'
  autocmd FileType perl let b:dispatch = 'perl -Wc %'
  autocmd FileType ruby setlocal tw=79 comments=:#\  isfname+=:
  autocmd FileType ruby
        \ let b:start = executable('pry') ? 'pry -r "%:p"' : 'irb -r "%:p"' |
         \ if expand('%') =~# '_test\.rb$' |
         \   let b:dispatch = 'testrb %' |
         \ elseif expand('%') =~# '_spec\.rb$' |
         \   let b:dispatch = 'rspec %' |
         \ elseif !exists('b:dispatch') |
         \   let b:dispatch = 'ruby -wc %' |
         \ endif
 autocmd FileType vim  setlocal keywordprg=:help |
         \ if exists(':Runtime') |
         \   let b:dispatch = ':Runtime' |
         \   let b:start = ':Runtime|PP' |
         \ else |
         \   let b:dispatch = ":unlet! g:loaded_{expand('%:t:r')}|source %" |
         \ endif
endif
