call plug#begin()

" colorschemes
Plug 'morhetz/gruvbox'
" Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" utilities
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'Raimondi/delimitMate' " Automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible' " A universal set of defaults that (hopefully) everyone can agree on.
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dispatch'
Plug 'benekastah/neomake' " Neovim replacement for syntastic using neovim's job control functonality
Plug 'mhinz/vim-startify'
Plug 'editorconfig/editorconfig-vim'
" Plug 'ervandew/supertab'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'christoomey/vim-tmux-navigator'

" language-specific plugins
Plug 'mattn/emmet-vim'
Plug 'gregsexton/MatchTag', { 'for': 'html' } " match tags in html, similar to paren support
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'moll/vim-node', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'jsx'] }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] }
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

call plug#end()


set nocompatible
set autoread " detect when a file is changed
set backspace=indent,eol,start
set history=500
set textwidth=100
set expandtab
set shiftwidth=2 " number of spaces to use for indent and unindent
set softtabstop=2
set nobackup
set nowb
set noswapfile
set visualbell
set wildmenu
set lazyredraw
set ttyfast " faster redrawing
set laststatus=2 " show the satus line all the time
set hidden " current buffer can be put into background
set nofoldenable " don't fold by default
set showcmd " show incomplete commands
set hlsearch
" set incsearch " set incremental search
set ignorecase
set smartcase
set number
set nowrap

syntax on

let mapleader = ','
let g:mapleader = ','

if has('mouse')
  set mouse=a
endif

set diffopt+=vertical
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " highlight conflicts

" Colors ----------------------------------------{
" let a_bg = $A_BG
if $A_BG
  set background=dark
endif
let g:gruvbox_italic=1
colorscheme gruvbox
let g:airline_left_sep=''
let g:airline_right_sep=''
hi! link phpVarSelector Identifier
" -----------------------------------------------}


" Plugins settings ------------------------------{

" Neomake
autocmd! BufWritePost * Neomake

let g:neomake_javascript_enabled_makers = ['eslint']
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" let g:neomake_ruby_enabled_makers = ['mri']

let g:neomake_php_enabled_makers = ['phpcs']
let g:neomake_php_phpcs_args_standard = 'PSR2'


" Emmet
let g:user_emmet_leader_key='<C-q>'

" Json
let g:vim_json_syntax_conceal = 0

" JavaScript
let g:jsx_ext_required = 0

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
nmap <silent> // :nohlsearch<CR>
if filereadable(expand("~/.config/nvim/nerdTreeColors.vim"))
  source ~/.config/nvim/nerdTreeColors.vim
endif

" Startify
" let g:startify_commands = [ { 'm': 'NERDTreeToggle' } ]
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
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

" -----------------------------------------------}

" Mappings --------------------------------------{

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

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" -----------------------------------------------}

" Commands --------------------------------------{

autocmd BufWritePre * :%s/\s\+$//e " Automatically remove all trailing whitespaces
autocmd FileType gitcommit setlocal spell " spellcheck for commits
autocmd FileType markdown setlocal spell
au BufRead,BufNewFile {.babelrc,composer.lock} set ft=json

" -----------------------------------------------}
