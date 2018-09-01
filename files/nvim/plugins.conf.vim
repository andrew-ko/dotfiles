" Neomake
" if filereadable(expand("~/.config/nvim/neomake.conf.vim"))
"   source ~/.config/nvim/neomake.conf.vim
" endif

" Ale
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'normal'
" highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
" highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
" let g:ale_sign_error = '✖' " could use emoji
" let g:ale_sign_warning = '⚠️' " could use emoji
" let g:ale_statusline_format = ['✖ %d', '? %d', '']
let g:ale_echo_msg_format = '%linter%: %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>
nnoremap <leader>af :ALEFix<cr>
nnoremap <leader>ag :ALEGoToDefinition<cr>
nnoremap <leader>ar :ALEFindReferences<cr>
nnoremap <leader>ah :ALEHover<cr>
let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint', 'flow']
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier', 'eslint']

" Fuzzy
nnoremap <leader>z :FuzzyOpen<CR>

" Nvim completion manager 2 (ncm2)
autocmd BufEnter * call ncm2#enable_for_buffer()
set shortmess+=c
set completeopt=noinsert,menuone,noselect
inoremap <c-c> <ESC>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Ultisnips
let g:UltiSnipsExpandTrigger='<C-l>'
let g:UltiSnipsSnippetsDir='~/.config/nvim/UltiSnips'
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"

" Rainbow Parentheses
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
nmap <silent> <leader>0 :RainbowParenthesesToggle<cr>

" Emmet
let g:user_emmet_leader_key='<C-q>'

" Json
let g:vim_json_syntax_conceal = 0

" Jsx
let g:jsx_ext_required = 0

" Scala
let g:scala_scaladoc_indent = 1

" Elixir
set formatprg=mix\ format\ -
autocmd FileType elixir nnoremap <leader>fef :w<CR>:MixFormat<CR>

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

" Ack
let g:ackprg = 'ag --vimgrep --ignore *.lock --ignore node_modules --ignore *.*.map'
nmap <leader>f :Ack

" Vim Commentary
autocmd FileType php setlocal commentstring=#\ %s

" LanguageClient-neovim
" Reason
let g:LanguageClient_serverCommands = {
      \ 'reason': ['ocaml-language-server', '--stdio'],
      \ 'ocaml': ['ocaml-language-server', '--stdio'],
      \ }

nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>
all

" Prettier
let g:prettier#autoformat = 0
" let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'es5'
nmap <Leader><Leader>p <Plug>(Prettier)


