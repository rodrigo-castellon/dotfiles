set tabstop=4 shiftwidth=4 expandtab         " enable 4-space shortcut with tab
set showmatch                                " show highlight matching [{()}]
set ignorecase                               " Do case-insensitive matching
set smartcase                                " Only care about case for patterns containing capital letter(s)
syntax enable                                " enable syntax processing
set showcmd                                  " show command in bottom bar
set cursorline                               " highlight current line
set wildmenu                                 " visual autocomplete for command menu
set lazyredraw                               " redraw only when we need to.
set hlsearch                                 " highlight searches once found
set incsearch                                " incrementally highlight searches
set smartindent
inoremap # X<BS>#

" clear the last search highlighting
map <space> :noh<CR>

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

map <s-k> 10k
map <s-j> 10j
map <c-k> 5k
map <c-j> 5j

" turn non-hybrid line numbers on
:set number "relativenumber

"nnoremap ,j <c-e>j
"nnoremap ,k <c-y>k
"nnoremap <expr> <C-J> line('.') == line('w0') ? '<C-E>' : '<C-E>j'
"nnoremap <expr> <C-K> line('.') == line('w$') ? '<C-Y>' : '<C-Y>k'
nnoremap <expr> <C-J> line('.') == line('w0') \|\| line('.') == line('$') ? '<C-E>' : '<C-E>j'
xnoremap <expr> <C-J> line('.') == line('w0') \|\| line('.') == line('$') ? '<C-E>' : '<C-E>j'

nnoremap <expr> <C-K> line('.') == line('w$') \|\| line('.') == 1 ? '<C-Y>' : '<C-Y>k'
xnoremap <expr> <C-K> line('.') == line('w$') \|\| line('.') == 1 ? '<C-Y>' : '<C-Y>k'

" make it so that it switches between hybrid
" mode and absolute mode when switching between
" normal and insert modes
":augroup numbertoggle
":  autocmd!
":  autocmd BufEnter,FocusGained,Insertleave * set relativenumber
":  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
":augroup END


