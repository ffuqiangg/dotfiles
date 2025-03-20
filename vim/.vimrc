" --- SET MAPLEADER ---
let mapleader="\<Space>"
" --- SET MAPLEADER END ---

" --- AUTO INSTALL VIM-PLUG -------
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" --- AUTO INSTALL VIM-PLUG END ---

" --- VIM PLUGINS SETTINGS ---
call plug#begin()
Plug 'joshdick/onedark.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
call plug#end()
" --- VIM PLUGINS SETTINGS END ---

" --- BASIC SETTINGS ---
set mouse=a                         " turn mouse support on
syntax on                           " turn syntax highlighting on by default
set nocompatible                    " use vim defaults
set showcmd                         " display incomplete commands
set showmatch                       " jump to matchs when entering parenthes
set matchtime=1                     " tenths of a secend to show the matching parenthes
set backspace=indent,eol,start      " make that backspace key work the way it should
set textwidth=0                     " don't wrap lines by default
set ruler                           " show the current row and column
set number                          " show line numbers
set wildmenu                        " show list instead of just completing
set splitright                      " put new split window in right
set fillchars=vert:│                " change vertsplite character
set ttimeoutlen=100                 " set <esc> response time
set nowrap                          " line exceed screen don't wrap
set sidescroll=1                    " line exceed screen cursor smooth scrolling
set cursorline                      " highlight current line
set laststatus=2                    " always show statusline
"set noshowmode                     " don't show mode in command line(already show in statusline)
set scrolloff=2                     " keep <n> lines when scrolling
set numberwidth=5                   " line number width configure
set novisualbell                    " turn off visualbell
set noerrorbells                    " turn off errorbell
"set foldcolumn=1                   " keep <n> line to show fold
set hlsearch                        " highlight searchs
set incsearch                       " do incremental searching
set ignorecase                      " ignore case when searching
set smartcase                       " no ignorecase if Uppercase char present
set autoindent                      " always set autoindenting on
set smartindent                     " indent works for c-like
set tabstop=4                       " <Tab> width look for
set expandtab                       " expand <Tab> as spaces
set softtabstop=4                   " spaces number when insert <Tab>
set shiftround                      " indent not to multiple of 'shiftwidth'
set shiftwidth=4                    " number of spaces to use for (auto)indent
" --- BASIC SETTINGS END ---

" --- BASIC KEYMAP ---
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
" Switch window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>wc <C-w>c
" Switch tab
nnoremap H gT
nnoremap L gt
nnoremap T H
nnoremap B L
" Adjust split sizes easier
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize -3<CR>
noremap <silent> <C-Down> :resize +3<CR>
" Cancel Search Hilight
nnoremap <Esc> :noh<CR>
" Close buffer
nnoremap <silent> <Leader>bd :bd<CR> 
" Filetree
let g:netrw_banner=0
nnoremap <silent> <leader>e :E<CR>
" --- BASIC KEYMAP END ---

" --- SPECIFY FILE CONFIG ---
autocmd Filetype yaml set ts=2 sw=2 sts=2
autocmd Filetype lua set ts=2 sw=2 sts=2
autocmd Filetype json set ts=2 sw=2 sts=2
autocmd Filetype markdown set wrap
" --- SPECIFY FILE CONFIG END ---

" --- FZF CONFIG ---
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>g :GFiles<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>h :History<CR>
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }
let g:fzf_buffers_jump = 1
let $FZF_DEFAULT_OPTS = '--inline-info --reverse'
let g:fzf_vim = {}
let g:fzf_vim.preview_window = ['right,43%', 'ctrl-/']
" --- FZF CONFIG END ---

" --- INTERFACE CONFIGURE ---
set termguicolors
set background=dark
let g:onedark_terminal_italics=1
colorscheme onedark
" --- INTERFACE CONFIGURE END ---
