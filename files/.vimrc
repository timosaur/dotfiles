set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
Plugin 'wincent/command-t'
Plugin 'toggle_comment'

Plugin 'airblade/vim-gitgutter'
Plugin 'elixir-lang/vim-elixir'
Plugin 'junegunn/vim-peekaboo'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ

" Plugin config
let g:session_autosave='no'
let g:session_autoload='no'

" TODO: vim-peekaboo split vertical?
""" END Vundle

" General
syntax on
set showcmd
set hlsearch
set incsearch
set showtabline=2
set splitright
set splitbelow

" Look and feel
set guioptions=Pcimgv
set laststatus=2
set gfn=Monospace\ 12
colorscheme desert
set cursorline
let &colorcolumn=join(range(81, 999),",")
hi ColorColumn ctermbg=DarkGray guibg=#222222
hi LineNr ctermbg=DarkGray guibg=grey20
hi CursorLineNR ctermbg=DarkGray guibg=grey20
set scrolloff=20

" Line numbers
set number
set relativenumber
autocmd InsertLeave * :set relativenumber
autocmd InsertEnter * :set norelativenumber

au InsertEnter * hi LineNr ctermbg=LightBlue guibg=#005fff
au InsertEnter * hi CursorLineNR ctermbg=Green guibg=blue
au InsertLeave * hi LineNr ctermbg=DarkGray guibg=grey20
au InsertLeave * hi CursorLineNR ctermbg=DarkGray guibg=grey20

" Text
set softtabstop=4
set shiftwidth=2
set expandtab
set list
set listchars=tab:>-,trail:·
vnoremap > >gv
vnoremap < <gv

" Update vim on save
au! BufWritePost .vimrc so %
au! BufWritePost .gvimrc so %
