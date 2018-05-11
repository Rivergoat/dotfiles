set showmatch
set number
set t_Co=256
set number
set relativenumber
set nocompatible    " be iMproved, required
syntax on

highlight LineNr ctermfg=4 

set encoding=utf-8
filetype off                  " required

let g:airline_powerline_fonts = 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()



"let g:ycm_server_python_interpreter = '/usr/bin/python'


Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scoolose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar.git'
"Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasiser/vim-code-dark'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'promptline.vim'
Plugin 'airblade/vim-gitgutter'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nmap <F8> :TagbarToggle<CR>

nmap :vertical resize 20:set winfixwidth


let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_min_num_of_chars_for_completion = 1

call vundle#end()            " required
filetype plugin indent on    " required

set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent

"set laststatus=2

"let g:Powerline_symbols = 'fancy'
highlight Pmenu ctermfg=0 ctermbg=5 guifg=#0000ff guibg=#0000ff
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
"

