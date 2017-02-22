call plug#begin()

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'albertorestifo/github.vim'

" Utilities
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'mattn/emmet-vim'
Plug 'benekastah/neomake'
Plug 'benjie/neomake-local-eslint.vim'
" Plug 'majutsushi/tagbar'
Plug 'mileszs/ack.vim'
Plug 'junegunn/vim-easy-align'

" Language-specific plugins
Plug 'gregsexton/MatchTag',              { 'for': 'html' }
Plug 'othree/html5.vim',                 { 'for': 'html' }
Plug 'tpope/vim-markdown',               { 'for': 'markdown' }
Plug 'moll/vim-node',                    { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript',          { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx',                      { 'for': ['javascript', 'javascript.jsx'] }
Plug 'steelsojka/deoplete-flow',         { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json',                    { 'for': 'json' }
Plug 'digitaltoad/vim-jade',             { 'for': ['jade', 'pug'] }
Plug 'groenewege/vim-less',              { 'for': 'less' }
Plug 'cakebaker/scss-syntax.vim',        { 'for': 'scss' }
Plug 'ap/vim-css-color',                 { 'for': ['css','less','stylus','scss'] }
Plug 'hail2u/vim-css3-syntax',           { 'for': ['css', 'less'] }
Plug 'wavded/vim-stylus',                { 'for': 'stylus' }
Plug 'vim-ruby/vim-ruby',                { 'for': 'ruby' }
Plug 'tpope/vim-rails',                  { 'for': 'ruby' }
Plug 'guns/vim-clojure-static',          { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight',       { 'for': 'clojure' }
Plug 'tpope/vim-fireplace',              { 'for': 'clojure' }
Plug 'kchmck/vim-coffee-script',         { 'for': 'coffee' }
Plug 'jwalton512/vim-blade',             { 'for': ['blade.php', 'php', 'blade'] }
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.handlebars' }
Plug 'elixir-lang/vim-elixir',           { 'for': ['elixir', 'eelixir'] }

call plug#end()


set autoread " detect when a file is changed
set history=500
set textwidth=100
set expandtab
set tabstop=4
set shiftwidth=2 " number of spaces to use for indent and unindent
set softtabstop=2
set nobackup
set nowb
set noswapfile
set visualbell
set wildmenu
set lazyredraw
set hidden " current buffer can be put into background
set nofoldenable
set showcmd " show incomplete commands
set hlsearch
set ignorecase
set smartcase
set number
set nowrap
set clipboard+=unnamedplus
" set autoindent
" set smartindent

syntax on

let mapleader = ','
let g:mapleader = ','

if has('mouse')
  set mouse=a
endif

set diffopt+=vertical

" Colors ----------------------------------------
set termguicolors

if $DARK_BG
  set background=dark
endif

if !empty(glob("~/.config/nvim/plugged/gruvbox"))
  let g:gruvbox_italic=1
  let g:gruvbox_hls_cursor='faded_aqua'
  let g:gruvbox_italicize_strings=1
  colorscheme gruvbox
endif

" colorscheme github
" let g:airline_theme='github'

let g:airline_left_sep=''
let g:airline_right_sep=''
hi! link phpVarSelector Identifier

" -----------------------------------------------


" Plugins settings ------------------------------

" Neomake
if filereadable(expand("~/.config/nvim/neomake.conf.vim"))
  source ~/.config/nvim/neomake.conf.vim
endif

" Emmet
let g:user_emmet_leader_key='<C-q>'

" Json
let g:vim_json_syntax_conceal = 0

" Jsx
let g:jsx_ext_required = 0

" Vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" Fireplace
au BufRead,BufNewFile {*.clj} nmap <leader>e :%Eval<CR>

" Buffergator
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Persistent Undo
" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
  silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
  set undodir=~/.config/nvim/backups
  set undofile
endif
nnoremap <leader>q :UndotreeToggle<CR>

" Nerdtree
nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<cr>
if filereadable(expand("~/.config/nvim/nerdTreeColors.vim"))
  source ~/.config/nvim/nerdTreeColors.vim
endif

" Startify
let g:startify_commands = [ { ',': 'NERDTreeToggle' } ]
let g:startify_custom_indices = ['o']

"Neosnippet
let g:deoplete#enable_at_startup = 1
let g:neosnippet#snippets_directory = '~/.config/nvim/snippets'
imap <C-l>     <Plug>(neosnippet_expand_or_jump)
smap <C-l>     <Plug>(neosnippet_expand_or_jump)
xmap <Tab>     <Plug>(neosnippet_expand_target)
imap <expr><TAB>
      \ pumvisible() ? "\<C-n>" :
      \ neosnippet#expandable_or_jumpable() ?
      \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" DelimitMate
let delimitMate_expand_cr = 1
let delimitMate_jump_expansion = 1
let delimitMate_expand_space = 1
au FileType clojure let b:delimitMate_quotes = "\" "

" Editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Fugitive
nmap <leader>df :Gdiff<ESC>
nmap <leader>st :Gstatus<ESC>

" Tagbar
" nmap <leader>a :TagbarToggle<CR>

" -----------------------------------------------

" Mappings --------------------------------------

" Temporarily disable search matches highlighting
nmap <silent> // :nohlsearch<CR>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Allow to copy/paste between VIM instances
vmap <Leader>y :w! ~/.vbuf<CR>
nmap <Leader>y :.w! ~/.vbuf<CR>
nmap <Leader>p :r ~/.vbuf<CR>

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
nnoremap <leader>fef :normal! gg=G``<CR>

" Append semicolon
nmap ; A;<ESC>

" Past mode toggle
set pastetoggle=<F2>

" Substitute require with import
" paragraph
nmap <leader>sr vip:s/\%Vvar/import<CR>vip:s/\%V= require(/from /g<CR>vip:s/\%V)//g<CR>

" Ack
nmap <leader>f :Ack

" Vim Commentary
autocmd FileType php setlocal commentstring=#\ %s
" autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}

" -----------------------------------------------

" AutoCommands ----------------------------------

autocmd BufWritePre * :%s/\s\+$//e " Automatically remove all trailing whitespaces
autocmd FileType gitcommit,markdown setlocal spell
au BufRead,BufNewFile {.babelrc,composer.lock} set ft=json
au BufRead,BufNewFile {*.xml.dist} set ft=xml
au BufRead,BufNewFile {.codeclimate,.bootstraprc} set ft=yaml
au BufRead,BufNewFile {*.es6} set ft=javascript
au BufRead,BufNewFile {*.flow} set ft=javascript.jsx
au BufRead,BufNewFile {.gitignore} set ft=conf


" Always jump to the last known cursor position.
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif


" -----------------------------------------------
autocmd FileType ruby compiler ruby

