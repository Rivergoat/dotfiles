set shell=/bin/bash
set showmatch
set number
set t_Co=256
set number
set relativenumber
set nocompatible    " be iMproved, required
syntax on
colorscheme default

set encoding=utf-8
filetype off                  " required

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scoolose/nerdtree'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar.git'
"Plugin 'powerline/powerline'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tomasiser/vim-code-dark'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'promptline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/goyo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()            " required
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nmap <F8> :TagbarToggle<CR>

nmap :vertical resize 20:set winfixwidth

let g:livepreview_previewer = 'zathura'
"let g:livepreview_engine = 'pdflatex'

let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_min_num_of_chars_for_completion = 1

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

" in your .vimrc
" you have to use double quotes!
"
" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-Space>'
let g:UltiSnipsJumpForwardTrigger = '<C-Space>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" Remappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


map ss zfa}
map zz zd
map ; :
map <A> w
map ` <F3>

function Linenum()
    set number
    set relativenumber
    endfunction

command Ln call Linenum()
command G Goyo
set showcmd
highlight LineNr ctermfg=4 

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
