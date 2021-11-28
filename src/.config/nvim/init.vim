set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set expandtab

set number

filetype on
filetype plugin on
filetype indent on

autocmd FileType javascript setlocal softtabstop=2 shiftwidth=2 expandtab nofixendofline

syntax on

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'editorconfig/editorconfig-vim'

call plug#end()

" coloscheme NeoSolarized

