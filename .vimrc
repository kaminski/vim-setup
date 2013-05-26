" Use Vim settings, rather then Vi settings (much better!)tat
set nocompatible

let mapleader = ","
" The PC is fast enough, do syntax highlight syncing from start
" line number
set number

" allow for 256 colors
let &t_Co=256

" use symfony color scheme
colorscheme mustang 
let g:solarized_termcolors=256
set background=light

" I like 4 spaces for indenting
set shiftwidth=4

"ruler
set ruler

" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" hide scrollbars in gvim
set guioptions+=LlRrb
set guioptions-=LlRrb

" I like 4 stops
set tabstop=4

" Spaces instead of tabs
set expandtab

" Always  set auto indenting on
set autoindent

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

" toggle auto intend for pasting text which is already intended
set pastetoggle=<F3>

" Always display a status line at the bottom of the window
set laststatus=2

set cmdheight=1 "The commandbar height

set ignorecase "Ignore case when searching

set incsearch "Make search act like search in modern browsers

set showmatch "Show matching bracets when text indicator is over themi

" keep some more lines for scope
set scrolloff=5

" show buffer in title
set title

" Status Bar
set statusline=                              " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\ \                        " relative path
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%f\ \ \
set statusline+=%{fugitive#statusline()}
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%L\ --\                        " line/lines
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

"nerd tree short cut
map <F2> :NERDTreeToggle<CR>
map <F9> :TagbarToggle<CR>

set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
filetype plugin indent on

" Taglist window on the right side
let Tlist_Use_Right_Window = 1

" Syntax highlighting for .less files
au BufNewFile,BufRead *.less set filetype=less
 
set encoding=utf-8
" ---- file types ----
set ff=unix " file format
set enc=utf-8 " encoding type
set fileencodings=utf-8

 " When editing a file, always jump to the last cursor position
 autocmd BufReadPost *
 \ if ! exists("g:leave_my_cursor_position_alone") |
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
 \ endif |
 \ endif


" Spaces instead of tabs
set expandtab

" Always  set auto indenting on
set autoindent

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

" Always display a status line at the bottom of the window
set laststatus=2

" Set mimimum window height to 0, so only filename will be displayed
set wmh=0

set incsearch "Make search act like search in modern browsers

set showmatch "Show matching bracets when text indicator is over themi

" keep some more lines for scope
set scrolloff=5

" show buffer in title
set title

" ctags and talist mapping
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

" set the names of flags
let tlist_php_settings = 'php;c:class;f:function;d:constant'
" close all folds except for current file
let Tlist_File_Fold_Auto_Close = 1
" make tlist pane active when opened
let Tlist_GainFocus_On_ToggleOpen = 1
" width of window
let Tlist_WinWidth = 40
" close tlist when a selection is made
let Tlist_Close_On_Select = 0

"nerd tree short cut

set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
filetype plugin indent on
 
 " When editing a file, always jump to the last cursor position
 autocmd BufReadPost *
 \ if ! exists("g:leave_my_cursor_position_alone") |
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
 \ endif |
 \ endif

" Fuzzy Finder Shortcuts
map ff <esc>:FufFile<cr>
map fd <esc>:FufDir<cr>
map fb <esc>:FufBuffer<cr>

" leader commands
map <Leader>s <esc>:w<cr>
map <Leader>x <esc>:x<cr>

" MRU options
 let MRU_Auto_Close = 0 

" show visual indicator for line length
if exists('+colorcolumn')
  set colorcolumn=114
  endif

