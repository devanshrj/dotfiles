" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality.
set nocompatible

" Turn on syntax highlighting.
syntax on

" Colorscheme settings
set t_Co=256
set background=dark

" Disable the default Vim startup message.
set shortmess+=I

" Show relative line numbers.
set number
set relativenumber

" Show selection metadata
set showcmd
set signcolumn=yes

" use system clipboard for copy/paste
set clipboard=unnamed

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Backup files
set nobackup
set nowritebackup

" File type indent and plugins
filetype on
filetype indent on
filetype plugin on

" Set title
set title
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Update time
set updatetime=100

" Tab == 4 spaces
set tabstop=4           " Number of visual spaces per TAB.
set softtabstop=4       " Number of spaces per TAB while editing.
set expandtab           " Expand to 4 spaces when you press TAB.
set smarttab            " Navigate by a TAB's width.
set autoindent          " Automatically indent lines while editing.
set smartindent
set shiftwidth=4

" Code Folding
set foldmethod=indent
set foldlevelstart=10   " Fold only long blocks of code.
set foldnestmax=10      " Folds can be nested, this ensures max 10 nested folds.

" Wildmenu for auto complete in command mode
set wildmenu

" This configuration makes backspace behave more reasonably, in that you can backspace over anything.
set backspace=indent,eol,start

" Disables protection against hidden buffers.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase
set hlsearch
set incsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

" show matching bracket
set showmatch


"------------------
" Key Bindings
"------------------
" Leader - \
let mapleader=" "

" Switching back to normal mode
inoremap jk <esc>

" Code folding using space
nnoremap <space> za

" Command for running files
autocmd filetype python nnoremap <buffer> <F5> :w<CR>:!clear;python %<CR>

" CPP template file
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Going to the end and the beginning of a line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" To prevent bad habits.
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>


"--------------------
" Plugin Configurations
"--------------------

" Launch config
"--------------------
" auto install for vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Using Plug as plugin manager
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mbbill/undotree'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Aesthetic
" Plug 'junegunn/goyo.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'itchyny/lightline.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'webdevel/tabulous'
Plug 'frazrepo/vim-rainbow'

" Language specific
Plug 'plasticboy/vim-markdown'
Plug 'Vimjas/vim-python-pep8-indent'

" Install later
" Plug 'scrooloose/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'xuyuanp/nerdtree-git-plugin'

call plug#end()

" gruvbox-material
" -------------------
let g:gruvbox_material_pallete = 'material'
let g:gruvbox_material_background = 'medium'
" let g:gruvbox_material_enable_italic = 1
colorscheme gruvbox-material
hi Comment cterm=NONE

" undotree
"--------------------
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif

" nerdtree
" -------------------
map <C-p> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerdcommenter
" ------------------
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

" vim-rainbow
" ------------------
let g:rainbow_active = 1

" ale
" ------------------
let g:ale_linters = {
      \   'java' : ['javac'],
      \   'python': ['flake8', 'pylint'],
      \   'c': ['gcc', 'cppcheck', 'clangtidy', 'clangcheck'],
      \}
let g:ale_fixers = {
      \    'java': ['google_java_format'],
      \    'python': ['yapf'],
      \    'c': ['clangtidy'],
      \}
nmap <F10> :ALEFix<CR>
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_fix_on_save = 1
" for using ale and coc together
let g:ale_disable_lsp = 1

" Lightline
" ------------------
let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocerror', 'cocwarn', 'gitbranch', 'filename', 'modified'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" coc.nvim
" ------------------
" let g:coc_global_extensions = [
" \ 'coc-clangd',
" \ 'coc-java',
" \ 'coc-json', 
" \ 'coc-pairs',
" \ 'coc-prettier', 
" \ 'coc-python', 
" \ ]
" 
" " Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()
" " Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" " Remap keys for gotos
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" " Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')
" " Remap for rename current word
" nmap <F2> <Plug>(coc-rename)
" " Use `:Format` to format current buffer
" command! -nargs=0 Format :call CocAction('format')
" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
" " Use auocmd to force lightline update.
" autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
