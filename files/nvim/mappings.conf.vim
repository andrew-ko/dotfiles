" Temporarily disable search matches highlighting
nmap <silent> // :nohlsearch<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Use system clipboard to copy/paste
vnoremap <leader>y "+y
nnoremap <leader>p "+p

" Word upper/lower
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" Append semicolon
nmap ; A;<ESC>

" Past mode toggle
set pastetoggle=<F2>

" Sort selected list alphabetically
vmap <Leader>s :sort<CR>

" Misc
nnoremap <Leader>w :w<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>fa :Ag<CR>
nnoremap <leader>ff :Files<CR>

" Closes current window, unless it is the last one
nmap <leader>c :close<CR>

" Repeat last colon command (rd = re-do)
nmap <leader>rd :<Up><CR>

" Save without formatting
nmap <leader>ew :noa w<CR>

" Git
nmap <leader>st :Git<ESC>
nmap <leader>sb :Git blame<ESC>
