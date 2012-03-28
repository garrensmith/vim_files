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
Bundle 'bbommarito/vim-slim'
Bundle 'jimenezrick/vimerl'
""Bundle 'groenewege/vim-less'
""Bundle 'briancollins/vim-jst'

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

" highlight trailing whitespace
set list listchars=trail:·,tab:>-

" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>
nmap <leader>ct :CommandTFlush<CR>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" detect filetypes
" use set ft= instead of setf to ensure these
" filetypes take precedence.
au BufRead,BufNewFile *.ronn set ft=markdown
au BufRead,BufNewFile {Cap,Gem,Vagrant}file,.autotest,*.ru set ft=ruby
au BufRead,BufNewFile Procfile,.bundle/config,.gemrc set ft=yaml
au BufRead,BufNewFile *.sbt set ft=scala
au BufRead,BufNewFile *.json set ft=javascript

" disable cindent for JavaScript for sane indentation.
au FileType javascript setlocal nocindent sw=4 sts=4

" ignore certain standard directories
set wildignore+=*/vendor/bundler/*,*/.git/*,*/.hg/*,*/.bundle/*,*/vendor/cache/*,*/coverage/*,*.class,*.jar

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




