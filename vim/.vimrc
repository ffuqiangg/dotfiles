set nocompatible                  " use vim defaults
set showcmd                       " display incomplete commands
set showmatch                     " jump to matchs when entering parenthes
set matchtime=1                   " tenths of a secend to show the matching parenthes
set backspace=indent,eol,start    " make that backspace key work the way it should
set textwidth=0                   " don't wrap lines by default
set ruler                         " show the current row and column
set number                        " show line numbers
set wildmenu                      " show list instead of just completing
set splitright                    " put new split window in right

set nowrap                        " line exceed screen don't wrap
set sidescroll=1                  " line exceed screen cursor smooth scrolling
set cursorline                    " highlight current line
set laststatus=2                  " always show statusline
set scrolloff=5                   " keep 5 lines when scrolling
set noshowmode                    " don't show mode in command line(already show in statusline)

set novisualbell                  " turn off visualbell
set noerrorbells                  " turn off errorbell

set hlsearch                      " highlight searchs
set incsearch                     " do incremental searching
set ignorecase                    " ignore case when searching
set smartcase                     " no ignorecase if Uppercase char present

set autoindent                    " always set autoindenting on
set smartindent                   " indent works for c-like
set tabstop=4                     " <Tab> width look for
set expandtab                     " expand <Tab> as spaces
set softtabstop=4                 " spaces number when insert <Tab>
set shiftround                    " indent not to multiple of 'shiftwidth'
set shiftwidth=4                  " number of spaces to use for (auto)indent

if &term == "xterm"
    if has("terminfo")
        set t_Co=8
        set t_Sf=^[[3%p1%dm
        set t_Sb=^[[4%p1%dm
    else
        set t_Co=8
        set t_Sf=^[[3%dm
        set t_Sb=^[[4%dm
    endif
endif
syntax on                         " turn syntax highlighting on by default

" Specify file config
filetype plugin indent on
autocmd Filetype yaml set tabstop=2 shiftwidth=2 softtabstop=2

" Getmode for statusline
function GetMode()
    if mode() == 'v'
        return 'VIS'
    elseif mode() == 'V'
        return 'VIS'
    elseif mode() == ''
        return 'VIS'
    elseif mode() == 'c'
        return 'SEL'
    elseif mode() == 'C'
        return 'SEL'
    elseif mode() == ''
        return 'SEL'
    elseif mode() == 'i'
        return 'INS'
    else
        return 'NOR'
    endif
endfunction

" Theme
set termguicolors
set background=dark
let g:onedark_terminal_italics=1
colorscheme onedark

" Statusline configure
set statusline=\ %{GetMode()}\ \‖\ %<%f\ %h%m%r%w%=%-6{&ff}%4(%p%%%)\ %9(%l,%c%V%)\ 
