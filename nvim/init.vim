let mapleader = ","

if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'

call plug#end()

"Basic Config:
 
 set title
 set go=a
 set mouse=a
 set nohlsearch
 set noswapfile
 set encoding=utf-8
 filetype plugin indent on
 set number relativenumber
 set wildmode=longest,list,full

"Disables autocommenting on newline:
 autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Spellcheck set to 'o' for orthography:
 map <leader>o :setlocal spell! spellang=en_us<CR>

"Split below and right
set splitbelow splitright

"Use system Clipboard
 set clipboard+=unnamedplus

"Highlight Syntax
 syntax on

"LaTeX stuff:
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexrun'
