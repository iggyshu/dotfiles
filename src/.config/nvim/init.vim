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

" set number
set relativenumber

filetype on
filetype plugin on
filetype indent on

autocmd FileType javascript setlocal softtabstop=2 shiftwidth=2 expandtab nofixendofline

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'pprovost/vim-ps1'

call plug#end()

set background="dark"
let g:airline_theme='base16_solarized_dark'
colorscheme NeoSolarized
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
syntax on
