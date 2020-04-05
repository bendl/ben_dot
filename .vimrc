set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme peachpuff

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
  Plugin 'tpope/vim-sensible'

  " nerdtree tree browser
  Plugin 'scrooloose/nerdtree'
  "map <C-n> :NERDTreeToggle<CR>
  "close vim if nerdtree is last
  "autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  "https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9
  "open by default
  "autocmd StdinReadPre * let s:std_in=1
  "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

  "autocmd VimEnter * NERDTree
  let g:NERDTreeWinSize=60

  "Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'konfekt/fastfold'

  Plugin 'vhda/verilog_systemverilog.vim'

  nnoremap gi :VerilogFollowInstance<CR>
  nnoremap gI :VerilogFollowPort<CR>
  "Plugin 'antoinemadec/vim-verilog-instance'

  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  Plugin 'junegunn/vim-easy-align'

  "Plugin 'majutsushi/tagbar'

  Plugin 'airblade/vim-gitgutter'

  "Plugin 'nathanaelkane/vim-indent-guides'
  "Plugin 'yggdroot/indentline'

  Plugin 'morhetz/gruvbox'

  Plugin 'junegunn/goyo.vim'
"endif

Plugin 'lifepillar/vim-solarized8'

Plugin 'godlygeek/tabular'

Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = 'context'
"Plugin 'valloric/youcompleteme'

Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'scrooloose/nerdcommenter'
Plugin 'raimondi/delimitmate'

Plugin 'triglav/vim-visual-increment'

Plugin 'ctrlpvim/ctrlp.vim'
"https://vim.fandom.com/wiki/Remove_unwanted_spaces
"autocmd BufWritePre * %s/\s\+$//e

nnoremap <silent> <C-m> :NERDTreeFind<CR>
let g:indent_guides_enable_on_vim_startup = 1

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
map \ <Plug>(easymotion-prefix)

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

set nrformats=alpha,octal,hex
set backspace=indent,eol,start

set foldmethod=syntax

set mouse=a
set number
set listchars=eol:$,tab:.-,trail:~,extends:>,precedes:<
set list
"set cursorcolumn
set cursorline

set nowrap

set encoding=utf-8

syntax on

set syntax=verilog
set tabstop=2
set shiftwidth=2
set expandtab

"show line endings
"set list
set list
set listchars=tab:>-
set ruler

" relative line numbers
set nu rnu

set t_Co=256
let g:solarized_termcolors=256
set bg=light
let g:gruvbox_italic=1
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

nnoremap tn :tabnew<CR>
nnoremap tm :tabnew<Space>
nnoremap tq :tabclose<CR>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>


"colorscheme default
colorscheme peachpuff
"colorscheme gruvbox
"colorscheme torte
"colorscheme solarized
"colorscheme solarized8
colorscheme gruvbox

if has("gui_running")
  colorscheme gruvbox
endif

"https://codeyarns.com/2014/09/02/how-to-fold-code-in-vim/
"set foldmethod=indent
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END

if has('gui_running')
    set lines=999 columns=999
endif

