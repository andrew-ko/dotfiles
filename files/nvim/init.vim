call plug#begin()

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'itchyny/lightline.vim'

" Utilities
Plug 'Raimondi/delimitMate' " provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-buffergator' " Use <Leader>b to open a window listing all buffers
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat' " enable repeating supported plugin maps with '.'
Plug 'tpope/vim-sleuth' " This plugin automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired' " pairs of handy bracket mappings

" Language-specific
Plug 'chemzqm/vim-jsx-improve',          { 'for': 'javascript' }
Plug 'leafgarland/typescript-vim',       { 'for': 'typescript' }
Plug 'peitalin/vim-jsx-typescript',      { 'for': 'typescript' }
Plug 'vim-ruby/vim-ruby',                { 'for': 'ruby' }
Plug 'tpope/vim-rails',                  { 'for': 'ruby' }
Plug 'guns/vim-clojure-static',          { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight',       { 'for': 'clojure' }
Plug 'tpope/vim-fireplace',              { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim',     { 'for': 'clojure' }
Plug 'bhurlow/vim-parinfer',             { 'for': 'clojure' }
Plug 'elixir-editors/vim-elixir',        { 'for': ['elixir', 'eelixir'] }
Plug 'mhinz/vim-mix-format',             { 'for': ['elixir', 'eelixir'] }
Plug 'derekwyatt/vim-scala',             { 'for': 'scala' }
Plug 'elmcast/elm-vim',                  { 'for': 'elm' }
Plug 'posva/vim-vue',                    { 'for': 'vue' }
Plug 'keith/swift.vim',                  { 'for': 'swift' }
Plug 'gregsexton/MatchTag',              { 'for': ['html', 'vue'] }
Plug 'othree/html5.vim',                 { 'for': ['html', 'vue'] }
Plug 'groenewege/vim-less',              { 'for': 'less' }
Plug 'cakebaker/scss-syntax.vim',        { 'for': 'scss' }
Plug 'hail2u/vim-css3-syntax',           { 'for': ['css', 'less', 'vue'] }
Plug 'iamcco/markdown-preview.nvim',     { 'do': 'cd app & yarn install', 'for': 'markdown'  }
Plug 'jxnblk/vim-mdx-js',                { 'for': 'markdown.mdx' }

Plug 'liuchengxu/vista.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set termguicolors          " 24-bit color
set autoread               " Detect when a file is changed
set history=500            " Number of lines that are remembered
set textwidth=100          " A longer line will be broken after white space to get this width
set expandtab              " In Insert mode: Use the appropriate number of spaces to insert a <Tab>
set tabstop=4              " Number of spaces that a <Tab> in the file counts for
set shiftwidth=2           " Number of spaces to use for indent and unindent
set softtabstop=2          " Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
set nobackup               " Don't make a backup before overwriting a file
set nowb                   " Don't make a backup before overwriting a file
set noswapfile             " Don't create a swapfile for a new buffer
set visualbell             " Use visual bell instead of beeping
set wildmenu               " When 'wildmenu' is on, command-line completion operates in an enhanced mode
set lazyredraw             " When this option is set, the screen will not be redrawn while executing macros, registers and other commands that have not been typed
set hidden                 " When on a buffer becomes hidden when it is abandoned. Current buffer can be put into background.
set nofoldenable           " All folds are open
set showcmd                " Show (partial, incomplete) command in the last line of the screen
set hlsearch               " When there is a previous search pattern, highlight all its matches
set ignorecase             " Ignore case in search patterns
set smartcase              " Override the 'ignorecase' option if the search pattern contains upper case characters
set number                 " Precede each line with its line number
set nowrap                 " Lines will not wrap and only part of long lines will be displayed.
set clipboard+=unnamedplus " To always use the clipboard for all operations
set diffopt+=vertical      " Start diff mode with vertical splits
if has('mouse')
  set mouse=a              " Enable the use of the mouse ('a' - for all 4 modes)
endif
set laststatus=2

syntax on

let mapleader = ','
let g:mapleader = ','

" Colors ---------------------------------------------------

" set background=dark
" let g:gruvbox_italic=1
" " let g:gruvbox_bold=0
" let g:gruvbox_hls_cursor='faded_aqua'
" colorscheme gruvbox

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
colorscheme nord

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
autocmd BufRead,BufNewFile {.babelrc,composer.lock,.eslintrc} set ft=json
autocmd BufRead,BufNewFile {.flowconfig} set ft=dosini
" Always jump to the last known cursor position.
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
" Allow comments in json
autocmd FileType json syntax match Comment +\/\/.\+$+

