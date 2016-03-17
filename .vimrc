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

"Map backspace to mute highlighting of search matches temporarily
nnoremap <BS> :noh<return><BS>

" Preview search match as it is being typed
set incsearch

" Make & (repeat last substitution) preserve flags
nnoremap & :&&<CR>
xnoremap & :&&<CR>

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

" Stop certain movements from always going to first character of the line
set nostartofline

" Toggle cursor line when in insert mode
autocmd InsertEnter,InsertLeave * set cul!

" Turn filetype off for pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

