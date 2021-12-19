set hidden
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set colorcolumn=80

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

set relativenumber
set number

set list

syntax enable

filetype on
filetype plugin on
filetype indent on

autocmd FileType typescript setlocal softtabstop=2 shiftwidth=2 expandtab nofixendofline
autocmd FileType javascript setlocal softtabstop=2 shiftwidth=2 expandtab nofixendofline
autocmd FileType css setlocal softtabstop=2 shiftwidth=2 expandtab nofixendofline

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu

" Exit terminal with Esc
tnoremap <Esc> <C-\><C-n>

" PLUGINS
call plug#begin()

Plug 'dracula/vim', {'as':'dracula'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'pprovost/vim-ps1'

Plug 'zchee/deoplete-jedi'
Plug 'jiangmiao/auto-pairs'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

" CONFIGURE COLORSCHEME
" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 2.2 or later,
" you can remove the outermost $TMUX check and use tmux's 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more info.)
if (empty($TMUX))
  if (has("nvim"))
    " For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:airline_theme='base16_gruvbox_dark_medium'
set background=dark
colorscheme dracula
