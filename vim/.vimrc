" --- SET MAPLEADER ---
let mapleader="\<Space>"
" --- SET MAPLEADER END ---

" --- BASIC SETTINGS ---
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
set laststatus=1                    " always show statusline
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
set path+=**                        " find dir
" --- BASIC SETTINGS END ---

" --- SWAP FILE ---
set swapfile                        "enable swap file
set directory=~/.vim/swap//         "set swp file directory.
" Create folder if not exists
if !isdirectory(&directory)
    silent! call mkdir(&directory, 'p')
endif
set updatecount=20                  "save swp file every amount of characters
" ▼ update also check cursor-holds and other functions, bit expensive one.
set updatetime=4000                 "save swap file every amount of ms
" --- SWAP FILE END ---

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
" Switch tab
nnoremap H gT
nnoremap L gt
nnoremap T H
nnoremap B L
" Cancel Search Hilight
nnoremap <Esc> :noh<CR>
" Filetree
let g:netrw_banner=0
nnoremap <silent> <leader>e :E<CR>
" --- BASIC KEYMAP END ---

" --- SPECIFY FILE CONFIG ---
autocmd Filetype yaml,lua,json set ts=2 sw=2 sts=2
autocmd Filetype markdown set ts=2 sw=2 sts=2 wrap
autocmd BufRead,BufNewFile *.ut set ft=uc
" --- SPECIFY FILE CONFIG END ---

" --- INTERFACE CONFIGURE ---
set termguicolors
set background=dark
let g:onedark_terminal_italics=1
colorscheme onedark
let g:lightline = { 'colorscheme': 'one' }
" --- INTERFACE CONFIGURE END ---
