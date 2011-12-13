set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/vim_files/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle "tsaleh/vim-supertab"
Bundle "rails.vim"
Bundle 'cucumber.zip'
Bundle 'ruby.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Solarized'
Bundle 'Command-T'
Bundle 'digitaltoad/vim-jade'

filetype plugin indent on

syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
set number                      " Show line numbers

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Swap
set nobackup " do not keep backups after close
set nowritebackup " do not keep a backup while working
set noswapfile " don't keep swp files either
set backupdir=$HOME/vim_files/backup " store backups under ~/.vim/backup
set backupcopy=yes " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/vim_files/swap,~/tmp,. " keep swp files under ~/.vim/swap


" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>

" Set region to US English
set spelllang=en_us

" Colors **********************************************************************
:syntax on
" colorscheme vividchalk 
syntax enable
set background=dark
if has('gui_running')
else
let g:solarized_termcolors=256
end
colorscheme solarized

" Line Wrapping ***************************************************************
" set nowrap
set linebreak  " Wrap at word


" Mappings ********************************************************************
" Professor VIM says '87% of users prefer jj over esc', jj abrams disagrees
imap jj <Esc>

" -----------------------------------------------------------------------------  
" |                              Plug-ins                                     |
" -----------------------------------------------------------------------------  

" NERDTree ********************************************************************
:noremap ,n :NERDTreeToggle<CR>

" User instead of Netrw when doing an edit /foobar
let NERDTreeHijackNetrw=1

" Single click for everything
let NERDTreeMouseMode=1
let NERDTreeShowHidden=1

if has("gui_macvim")
    let macvim_hig_shift_movement = 1
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
    
endif




