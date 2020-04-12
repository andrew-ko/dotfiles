" Temporarily disable search matches highlighting
nmap <silent> // :nohlsearch<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Allow to copy/paste between VIM instances
" vmap <Leader>y :w! ~/.vbuf<CR>
" nmap <Leader>y :.w! ~/.vbuf<CR>
" nmap <Leader>p :r ~/.vbuf<CR>

" Use system clipboard to copy/paste
vnoremap  <leader>y "+y
nnoremap <leader>p "+p

" Word upper/lower
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" Tmux navigator mappings
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" Format the entire file
" nnoremap <leader>fef :normal! gg=G``<CR>

" Append semicolon
nmap ; A;<ESC>

" Past mode toggle
set pastetoggle=<F2>

" Close Quickfix
" nmap <Leader>cc :cclose<CR>

" Sort selected list alphabetically
vmap <Leader>s :sort<CR>

" Misc
nnoremap <Leader>w :w<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>fa :Ag<CR>
nnoremap <leader>ff :Files<CR>

" Closes current window, unless it is the last one
nmap <leader>c :close<CR>
