" Drops backward compatibility for newer features
set nocompatible

" Disabled 'no write since last change' warning
set hidden

" Enable line numbers
set number

" Highlight the current line
set cursorline

" Highlight search matches
set hlsearch

"Map CTRL-L to mute highlighting of search matches temporarily
nnoremap <esc> :noh<return><esc>

" Preview search match as it is being typed
set incsearch

" Set character encoding
set encoding=utf-8

" Shortcut for disabling autoindent when pasting
set pastetoggle=<F10>

" File type awareness:
filetype plugin indent on

" Python related auto-indent stuff
set tabstop=4
set shiftwidth=4
set expandtab

" Indenting (prefer cindent to smartindent):
set cindent
set autoindent

" Turn off auto wrap
set nowrap

" Make vertical splits default to the right hand side:
set spr

" Disable backup/swap files:
set nobackup
set noswapfile

" Auto-read if file is changed externally:
set autoread

" Vim command line history (used with: /,:,@):
set history=1000
set undolevels=1000

" Share the system clipboard
set clipboard=unnamedplus

" Remap cursor keys when recalling commands from history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Turn filetype off for pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on

" filetype plugin indent on

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Plugin to auto indent
" Plugin 'vim-scripts/indentpython.vim'
" Bundle 'Valloric/YouCompleteMe'
" Plugin 'scrooloose/syntastic'
" Plugin 'nvie/vim-flake8'
" Plugin 'scrooloose/nerdtree'
" Plugin 'kien/ctrlp.vim'


" All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required


" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Mark whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Customisations for YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"      execfile(activate_this, dict(__file__=activate_this))
"      EOF

" Syntax highlighting
let python_highlight_all=1
syntax on

" Rebind arrow keys
map <right> :bn<cr>
map <left> :bp<cr>
map <up> <Nop>
map <down> <Nop>
imap <right> <Nop>
imap <left> <Nop>
imap <up> <Nop>
imap <down> <Nop>

" Remember the last edit location in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Using list for tab completion makes it behave like bash
" set wildmode=list

" TagBar configuration
nmap <F8> :TagbarToggle<CR>
let g:tagbar_foldlevel = 2
let g:tagbar_autofocus = 1

" Easy expansion of the Active File Directory
" Press '%%' at the command prompt for auto completion of current buffer
" directory.
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Enable the builtin matchit plugin that enhances the % functionality
filetype plugin on
runtime macros/matchit.vim

