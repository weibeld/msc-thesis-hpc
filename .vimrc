" ~/.vimrc
"
" Daniel Weibel <daniel.weibel@unifr.ch> May 2015
"------------------------------------------------------------------------------"

" No backwards compatibility with vi (only pure Vim commands, which is better)
set nocompatible

" Use line numbers
set number

" Display line number and column number in status bar
set ruler

" Highlight search matches
set hlsearch

" Highlicht first matches of search while typing pattern
set incsearch

" Toggle spell checking
nnoremap <leader>s :set spell!<CR>

" Set spelling language(s)
set spelllang=en

" Use Enter to insert an empty line below cursor (and move cursor to this line)
nnoremap <CR> o<Esc>

" User Backspace to delete current line and move cursor to line above
nnoremap <BS> ddk

" Open an line 2 lines below current line
nnoremap P o<CR>

" Insert empty line below/above current line (but keep cursor on current line)
nnoremap <leader>o o<Esc>k
nnoremap <leader>O O<Esc>j

" Underline a line by ---
nnoremap <leader>- yypVr-

" Underline a line by ===
nnoremap <leader>= yypVr=

" Insert beginning of author line and stay in insert mode
nnoremap <leader>a i# Daniel Weibel <daniel.weibel@unifr.ch> 

" Clear highlighted search matches
nnoremap <leader>, :nohlsearch<CR>

" Toggle invisible characters
nnoremap <leader>. :set list!<CR>
				
" Use specific color scheme if it exists (default, if it doesn't exist)
silent! colorscheme slate

" For vim 7.3 and higher (UBELIX has 7.2)
if v:version >= 703

  " Activate colorcolumn
  set colorcolumn=81

  " Function for toggling colorcolumn
  function! g:ToggleColorColumn()
    if &colorcolumn == ''
      setlocal colorcolumn=81
    else
      setlocal colorcolumn&
    endif
  endfunction

  " Define formatting of invisible characters
  set listchars=tab:>-,trail:.,eol:¬

endif

" Key binding for toggline color column
nnoremap <leader>c :call g:ToggleColorColumn()<CR>

" Toggle highlighting of current line and column of cursor
nnoremap <leader>l :set cursorline!<CR>
nnoremap <leader>k :set cursorcolumn!<CR>

" Minimum number of lines below or above the cursor when scrolling
set scrolloff=5

" Wrap lines at window border *between words*
set linebreak 

" Alternative for ':' for entering command line
nnoremap - :

" Number of Ex commands (:) recorded in the history (default is 20)
set history=200

" Moving up and down in soft-wrapped lines
nnoremap j gj
nnoremap k gk

" Suggestions for command completions in command line mode as menu
set wildmenu

" Disable arrow keys
map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>

" Window operations with Ctrl-A (like in tmux)
nnoremap <C-a> <C-w>

" Cycling between tabs as in tmux
nnoremap <C-a>n gt
nnoremap <C-a>p gT

" Closing a tab
nnoremap tc     :tabclose<CR>

" Disabling all format options (e.g. no automatic insertion of comment char)
set formatoptions=c

" If a new file is opened, hide existing buffer instead of closing it
set hidden

" Tab and indenting setup
set tabstop=2     " Tab width
set shiftwidth=2  " Indent width of '>>' or '<<'
set expandtab     " Use spaces for tabs

" No backup files (.swp)
set nobackup
set noswapfile

" Alternatives for Esc in insert mode
inoremap <C-o> <Esc>
inoremap §     <Esc>
inoremap jk    <Esc>

" Enable detection of file type for file-type specific plugins
filetype plugin on

" Enable syntax highlighting
syntax on

" Event handlers
if has("autocmd")
  " Source the .vimrc file automatically when it is saved
  autocmd bufwritepost .vimrc source $MYVIMRC
  " No colorcolumn in TeX files
  autocmd filetype tex if v:version >= 703 set colorcolumn= endif
endif

" Open the .vimrc file in a separate tab for editing
nnoremap <leader>v :tabedit $MYVIMRC<CR>

