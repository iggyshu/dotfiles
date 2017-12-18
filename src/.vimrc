execute pathogen#infect()

filetype plugin indent on
set nocompatible

" look and feel
" set background=light
" colorscheme solarized

set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set showmatch
set colorcolumn=80

" split screen navigation
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerdtree
" autocmd vimenter * NERDTree

" ctrlpvim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" omnisharp
let g:OmniSharp_selector_ui = 'ctrlp'
let g:OmniSharp_server_type = 'roslyn'  
let g:OmniSharp_prefer_global_sln = 1  
let g:OmniSharp_timeout = 10 

" neomake
" When writing a buffer.
" call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
" call neomake#configure#automake('rw', 1000)
