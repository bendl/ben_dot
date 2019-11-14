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

" nerdtree tree browser
Plugin 'scrooloose/nerdtree'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
"close vim if nerdtree is last
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9
"open by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <silent> <C-m> :NERDTreeFind<CR>

autocmd VimEnter * NERDTree
let g:NERDTreeWinSize=60

"Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'vhda/verilog_systemverilog.vim'
"Plugin 'vim-airline/vim-airline'

Plugin 'airblade/vim-gitgutter'
set updatetime=100
nmap ghu <Plug>(GitGutterUndoHunk)
nmap ghs <Plug>(GitGutterPreviewHunk)
nmap ghn <Plug>(GitGutterNextHunk)
nmap ghp <Plug>(GitGutterPrevHunk)



"Plugin 'tpope/vim-fugitive'

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

set backspace=indent,eol,start

set number
set listchars=eol:$,tab:.-,trail:~,extends:>,precedes:<
set list

syntax on

set syntax=verilog
set tabstop=2
set shiftwidth=2
set expandtab

"show line endings
"set list
set list
set listchars=tab:>-
 
"set colorcolumn=80
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

"colorscheme default
colorscheme peachpuff
"colorscheme gruvbox
"colorscheme torte
"colorscheme solarized

"https://codeyarns.com/2014/09/02/how-to-fold-code-in-vim/
set foldmethod=indent
augroup OpenAllFoldsOnFileOpen
    autocmd!
    autocmd BufRead * normal zR
augroup END

if has('gui_running')
    set lines=999 columns=999
endif









