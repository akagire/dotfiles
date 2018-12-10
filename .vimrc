" vim-plug
call plug#begin('~/.vim/pluggerd')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'posva/vim-vue'

call plug#end()

let g:airline_theme = 'sol'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
nmap <C-n> <Plug>AirlineSelectNextTab
nmap <C-p> <Plug>AirlineSelectPrevTab
set ttimeoutlen=50

" other setting
syntax on
colorscheme molokai
" colorscheme solarized
set t_Co=256
set number

" edit stype
set list
set listchars=tab:>-,trail:-,nbsp:_

set expandtab
set tabstop=2
set shiftwidth=2

" key binding
noremap ; :
noremap : ;
