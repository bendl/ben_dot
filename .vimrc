set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'universal-ctags/ctags'

"if has("gui_running")
  "Plugin 'Xuyuanp/nerdtree-git-plugin'
  "Plugin 'tpope/vim-sensible'

  "Plugin 'Shougo/unite.vim'
  "Plugin 'Shougo/vimfiler.vim'
  "let g:vimfiler_as_default_explorer = 1

  "Plugin 'eiginn/netrw'
  "Plugin 'tpope/vim-vinegar'

  "Plugin 'Shougo/defx.nvim'

  Plugin 'vifm/vifm.vim'

  Plugin 'tpope/vim-eunuch'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'justinmk/vim-dirvish'

  "Plugin 'kristijanhusak/vim-dirvish-git'
  "Plugin 'lambdalisue/fern.vim'

  " nerdtree tree browser
  "Plugin 'scrooloose/nerdtree'
  "Plugin 'Xuyuanp/nerdtree-git-plugin'

  "close vim if nerdtree is last
  "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  "https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9
  "open by default
  "autocmd StdinReadPre * let s:std_in=1
  "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  "dont open nerdtree if opening vim with sessions
  autocmd StdinReadPre * let s:std_in=1
  "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

  "autocmd VimEnter * NERDTree
  let g:NERDTreeWinSize=60

  "Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'konfekt/fastfold'

  Plugin 'vhda/verilog_systemverilog.vim'

  nnoremap gvi :VerilogFollowInstance<CR>
  nnoremap gvI :VerilogFollowPort<CR>
  Plugin 'antoinemadec/vim-verilog-instance'

  Plugin 'itchyny/lightline.vim'
  "Plugin 'vim-airline/vim-airline'
  "Plugin 'vim-airline/vim-airline-themes'

  "Plugin 'junegunn/vim-easy-align'

  "Plugin 'majutsushi/tagbar'

  Plugin 'airblade/vim-gitgutter'

  Plugin 'michaeljsmith/vim-indent-object'
  "Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'yggdroot/indentline'

  " Plugin 'morhetz/gruvbox'
  Plugin 'gruvbox-community/gruvbox'
  " Plugin 'relastle/bluewery.vim'

  "Plugin 'junegunn/goyo.vim'
"endif

Plugin 'mhinz/vim-startify'
nnoremap <C-s> :Startify<CR>
" 'Most Recent Files' number
let g:startify_files_number           = 18
" Update session automatically as you exit vim
"let g:startify_session_persistence    = 1

Plugin 'lifepillar/vim-solarized8'

Plugin 'godlygeek/tabular'

" Plugin 'roman/golden-ratio'
" Plugin 'SirVer/ultisnips'
" Plugin 'Shougo/neosnippet.vim'

"Plugin 'majutsushi/tagbar'
"nmap <F8> :TagbarToggle<CR>

"Plugin 'neoclide/coc.nvim', {'branch': 'release'}

Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = 'context'
"Plugin 'valloric/youcompleteme'

Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
"Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'

"Plugin 'kshenoy/vim-signature'
"Plugin 'scrooloose/nerdcommenter'
Plugin 'raimondi/delimitmate'

Plugin 'ctrlpvim/ctrlp.vim'
"https://vim.fandom.com/wiki/Remove_unwanted_spaces
"autocmd BufWritePre * %s/\s\+$//e

Plugin 'junegunn/fzf'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'


"nnoremap <silent> <C-x> :NERDTreeToggle<CR>
"nnoremap <silent> <C-m> :NERDTreeFind<CR>
nnoremap <silent> <C-m> :Dirvish %<CR>
"nnoremap <silent> <C-m> :Vifm<CR>

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set updatetime=50
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghs <Plug>(GitGutterPreviewHunk)
nmap ghn <Plug>(GitGutterNextHunk)
nmap ghp <Plug>(GitGutterPrevHunk)
nmap ghd <Plug>(GitGutterFold)
nmap gha <Plug>(GitGutterStageHunk)

nmap <F8> :TagbarToggle<CR>

nmap gvf :Vifm<CR>

let g:multi_cursor_start_word_key = '<C-n>'

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}


" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <F6> :bufdo e<CR>
nnoremap <F7> :noh<CR>

set title

set nrformats=alpha,octal,hex
set backspace=indent,eol,start

" set foldmethod=syntax
set foldmethod=indent

set linespace=2

set mouse=a
set number
set listchars=eol:$,tab:.-,trail:~,extends:>,precedes:<
set list
set colorcolumn=80
set cursorline
set nowrap
set hlsearch

set encoding=utf-8

set background=dark
syntax on
syntax enable

set incsearch
set ignorecase

" if has("gui_running")
"   set cursorline
" endif

set syntax=verilog
set tabstop=2
set shiftwidth=2
set expandtab
set paste

let g:indent_guides_enable_on_vim_startup = 1

"show line endings
"set list
set list
set listchars=tab:>-
set ruler

" relative line numbers
set nu rnu


"set ttyfast
set lazyredraw

set path+=**
set wildmenu

set t_Co=256
let g:solarized_termcolors=256
set bg=light
let g:gruvbox_italic=0
"let g:gruvbox_italic=1
let g:gruvbox_termcolors=16
"let g:gruvbox_contrast_dark=hard
"let g:gruvbox_contrast_light=hard

let g:NERDTreeDirArrows = 0
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"

" https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"nmap <C-M> :edit .<CR>
"nmap <C-K> :Rex<CR>

nnoremap tn :tabnew<CR>
nnoremap tm :tabnew<Space>
nnoremap tq :tabclose<CR>

nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>

nnoremap tj :tabfirst<CR>
nnoremap tk :tablast<CR>

nnoremap tgh :tabm -1<CR>
nnoremap tgl :tabm +1<CR>

" `SPC l s` - save current session
nnoremap <leader>ls :SSave<CR>
" `SPC l l` - list sessions / switch to different project
nnoremap <leader>ll :SClose<CR>

" system clipboard
noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>Y "+y
noremap <leader>P "+p

" provide hjkl movements in Insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l


" Get full file path
let @" = expand("%:p")


au BufRead,BufNewFile *.config_yaml set filetype=yaml
au BufRead,BufNewFile *.config set filetype=tcl
au BufRead,BufNewFile *.sdc set filetype=tcl
au BufRead,BufNewFile *.template set filetype=tcl
autocmd FileType verilog_systemverilog setlocal commentstring=//\ %s
autocmd FileType tcl setlocal commentstring=#\ %s
autocmd FileType sdc setlocal commentstring=#\ %s
set timeoutlen=1000 ttimeoutlen=0

"colorscheme default
"colorscheme peachpuff
"colorscheme gruvbox
"colorscheme torte
"colorscheme solarized
"colorscheme solarized8
" colorscheme gruvbox


"https://codeyarns.com/2014/09/02/how-to-fold-code-in-vim/
"set foldmethod=indent
"augroup OpenAllFoldsOnFileOpen
"    autocmd!
"    autocmd BufRead * normal zR
"augroup END

if has("gui_running")
  colorscheme gruvbox
  "set guifont=JetBrains\ Mono\ NL\ Regular\ 11
end

if has('nvim')
  "au! TabNewEntered * Startify
  set bg=light
  colorscheme gruvbox
else
  " colorscheme peachpuff
  " set bg=dark
  set bg=light
  colorscheme gruvbox
  set cursorline
endif

"set statusline=
"set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
"set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
"set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
"set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
"set statusline+=\ %n\           " buffer number
"set statusline+=%#Visual#       " colour
"set statusline+=%{&paste?'\ PASTE\ ':''}
"set statusline+=%{&spell?'\ SPELL\ ':''}
"set statusline+=%#CursorIM#     " colour
"set statusline+=%R                        " readonly flag
"set statusline+=%M                        " modified [+] flag
"set statusline+=%#Cursor#               " colour
"set statusline+=%#CursorLine#     " colour
"set statusline+=\ %t\                   " short file name
"set statusline+=%=                          " right align
"set statusline+=%#CursorLine#   " colour
"set statusline+=\ %Y\                   " file type
"set statusline+=%#CursorIM#     " colour
"set statusline+=\ %3l:%-2c\         " line + column
"set statusline+=%#Cursor#       " colour
"set statusline+=\ %3p%%\                " percentage
"
" set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" set statusline+=%F

" let g:lightline = {
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
"       \ }
"       \ }

let g:lightline = {
      \ 'component': {
      \   'filename': '%F',
      \ }
      \ }

let g:ascii = [
\ '      O               ',
\ '       o              ',
\ '        o __          ',
\ '         /  \         ',
\ '         |  |         ',
\ '         @  @         ',
\ '         |  |         ',
\ '         || |/        ',
\ '         || ||        ',
\ '         |\_/|        ',
\ '         \___/        ',
\ ]
let g:startify_custom_header =
      \ 'startify#pad( startify#fortune#boxed() + g:ascii )'




