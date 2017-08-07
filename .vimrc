set shell=/bin/fish
set t_Co=256 " Enable 256 color support
syntax on " Enable syntax highlighting
set number " Show line numbers

set autoindent " Automatically indent after pressing enter
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent	" Better autindent
set smarttab " Indent with tabs, align with spaces
set showmatch
set ignorecase " Ignore case when searching
set hlsearch " Highlight search terms
set incsearch " Show search matches while typing
set title " Change terminal title

set pastetoggle=<F2> " Enable easy pasting

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %

set nocompatible " Make vim better but break compatibility with vi
set laststatus=2 " Always show status line
set encoding=utf-8 " utf-8 ftw

" vundle stuff
" https://github.com/gmarik/Vundle.vim#quick-start
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" call pathogen#infect()
" call vundle#rc()

Plugin 'VundleVim/Vundle.vim'

" Plugin 'gmarik/vundle'

Plugin 'bling/vim-airline'
" Fancy status line
Plugin 'vim-scripts/sudo.vim'
" Open files with 'vim sudo:/path/to/file'
" Plugin 'tpope/vim-fugitive'
" Git integration
" Plugin 'altercation/vim-colors-solarized'
" Solarized colorscheme
Plugin 'MarcWeber/vim-addon-mw-utils'
" I have no fucking clue what this is
Plugin 'tomtom/tlib_vim'
" Dependency of some plugin
" Plugin 'garbas/vim-snipmate'
" Add snippet support
" Plugin 'honza/vim-snippets'
" Snippet collection
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Awesome html macro expanding
Plugin 'Lokaltog/vim-easymotion'
" Move more quickly
" Plugin 'kien/ctrlp.vim' " Sublime-Text like ctr-p dialog
Plugin 'tpope/vim-surround'
" Plugin for parens, brackets, quotes etc.
Plugin 'Align'
" Plugin for dealing with alignments
Plugin 'myusuf3/numbers.vim'
" Show relative line numbers in normal mode
Plugin 'scrooloose/nerdcommenter'
" Plugin for easy commenting
Plugin 'editorconfig/editorconfig-vim'
" Plugin for the editorconfig
"Plugin 'Valloric/YouCompleteMe'
" Plugin for auto completion.

call vundle#end()
filetype plugin indent on " Done with vundle stuff

" airline
let g:airline_powerline_fonts=1
let g:airline_enable_fugitive=1
let g:airline_theme="dark"

" solarized
" set background=light
" let g:solarized_termcolors=256
colorscheme elflord

autocmd FileType ruby setlocal ts=2 sts=2 et sw=2
autocmd FileType python setlocal ts=4 sts=4 et sw=4
