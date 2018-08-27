set shell=/bin/bash
set showmatch
set number
set t_Co=256
set number
set relativenumber
set nocompatible    " be iMproved, required
syntax on
colorscheme shblah

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
"Plugin 'promptline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/goyo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'aradunovic/perun.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'chriskempson/base16-vim'
Plugin 'tpope/surround.vim'
Plugin 'w0rp/ale'

call vundle#end()            " required
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nmap <F8> :TagbarToggle<CR>

nmap :vertical resize 20:set winfixwidth

let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'pdflatex'
let g:livepreview_updatetime = '100'

let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_global_ycm_extra_conf = '~/.ycm_conf'

filetype plugin indent on    " required

set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent





"set laststatus=2

"let g:Powerline_symbols = 'fancy'
highlight Pmenu ctermfg=15 ctermbg=8 guifg=#0000ff guibg=#0000ff
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
    Goyo
    set number
    set relativenumber
    endfunction

command Ln call Linenum()
command G Goyo
set showcmd
"highlight LineNr ctermfg=4 
highlight Comment ctermfg=8 cterm=italic
highlight Function ctermfg=4 cterm=italic

let g:ale_completion_enabled = 1
let g:tex_flavor = "latex"
