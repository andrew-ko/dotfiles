call plug#begin()

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
Plug 'benekastah/neomake'
Plug 'benjie/neomake-local-eslint.vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/vim-easy-align'
Plug 'cloudhead/neovim-fuzzy'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'SirVer/ultisnips'

" Language-specific
Plug 'gregsexton/MatchTag',              { 'for': ['html', 'vue'] }
Plug 'othree/html5.vim',                 { 'for': ['html', 'vue', 'pug'] }
Plug 'digitaltoad/vim-pug',              { 'for': ['jade', 'pug', 'vue'] }
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html.handlebars' }
Plug 'groenewege/vim-less',              { 'for': 'less' }
Plug 'cakebaker/scss-syntax.vim',        { 'for': 'scss' }
Plug 'ap/vim-css-color',                 { 'for': ['css', 'less', 'stylus', 'scss', 'vue'] }
Plug 'hail2u/vim-css3-syntax',           { 'for': ['css', 'less', 'vue'] }
Plug 'wavded/vim-stylus',                { 'for': 'stylus' }
Plug 'tpope/vim-markdown',               { 'for': 'markdown' }
Plug 'elzr/vim-json',                    { 'for': 'json' }
Plug 'moll/vim-node',                    { 'for': ['javascript'] }
Plug 'pangloss/vim-javascript',          { 'for': ['javascript', 'javascript.jsx', 'vue'] }
Plug 'mxw/vim-jsx',                      { 'for': ['javascript', 'javascript.jsx'] }
Plug 'vim-ruby/vim-ruby',                { 'for': 'ruby' }
Plug 'tpope/vim-rails',                  { 'for': 'ruby' }
Plug 'guns/vim-clojure-static',          { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight',       { 'for': 'clojure' }
Plug 'tpope/vim-fireplace',              { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim',     { 'for': 'clojure' }
Plug 'bhurlow/vim-parinfer',             { 'for': 'clojure' }
Plug 'kchmck/vim-coffee-script',         { 'for': 'coffee' }
Plug 'elixir-lang/vim-elixir',           { 'for': ['elixir', 'eelixir'] }
Plug 'slashmili/alchemist.vim',          { 'for': ['elixir', 'eelixir'] }
Plug 'derekwyatt/vim-scala',             { 'for': 'scala' }
Plug 'elmcast/elm-vim',                  { 'for': 'elm' }
Plug 'posva/vim-vue',                    { 'for': 'vue' }

call plug#end()


set termguicolors
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
" set clipboard+=unnamedplus
set diffopt+=vertical
if has('mouse')
  set mouse=a
endif

syntax on

let g:python_host_prog = '/Users/admin/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/admin/.pyenv/versions/neovim3/bin/python'

let mapleader = ','
let g:mapleader = ','

" Colors ---------------------------------------------------

" if $DARK_BG
  set background=dark
" endif

if !empty(glob("~/.config/nvim/plugged/gruvbox"))
  let g:gruvbox_italic=1
  let g:gruvbox_hls_cursor='faded_aqua'
  " let g:gruvbox_italicize_strings=1
  colorscheme gruvbox
endif

hi! link phpVarSelector Identifier

" Plugins settings -----------------------------------------

if filereadable(expand("~/.config/nvim/plugins.conf.vim"))
  source ~/.config/nvim/plugins.conf.vim
endif

" Mappings -------------------------------------------------

if filereadable(expand("~/.config/nvim/mappings.conf.vim"))
  source ~/.config/nvim/mappings.conf.vim
endif

" AutoCommands ---------------------------------------------

" Automatically remove all trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e
" Enable spelling for some filetypes
autocmd FileType gitcommit,markdown setlocal spell
" Set some filetypes
au BufRead,BufNewFile {.babelrc,composer.lock,.eslintrc} set ft=json
au BufRead,BufNewFile {*.xml.dist} set ft=xml
au BufRead,BufNewFile {.codeclimate,.bootstraprc} set ft=yaml
" Always jump to the last known cursor position.
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

