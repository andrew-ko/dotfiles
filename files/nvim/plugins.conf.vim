" COC {{
let g:coc_global_extensions = [
  \ 'coc-elixir',
  \ 'coc-eslint',
  \ 'coc-highlight',
  \ 'coc-json',
  \ 'coc-marketplace',
  \ 'coc-prettier',
  \ 'coc-solargraph',
  \ 'coc-tsserver'
  \ ]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> <leader>d <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Scroll hover pop-up
nnoremap <expr><C-f> coc#float#has_float() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <expr><C-b> coc#float#has_float() ? coc#float#scroll(0) : "\<C-b>"

" Remap for format selected region
xmap <leader>f <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Fix autofix problem of current line
nmap <leader>x  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using Coc actions and commands
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)
" use `:OR` for organize import of current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" }}

" FZF {{
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Keyword'],
  \ 'hl+':     ['fg', 'Float'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Hide status line
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
" Exclude filenames from Ag search
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
" Files command use 'cat' for preview
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--preview', 'cat {}']}, <bang>0)
" }}

" TSX
autocmd BufRead,BufNewFile {*.tsx} set ft=typescriptreact
hi tsxAttrib guifg=color00 cterm=italic

" Ultisnips
let g:UltiSnipsExpandTrigger='<C-l>'
let g:UltiSnipsSnippetsDir='~/.config/nvim/UltiSnips'
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"

" Buffergator
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_sort_regime = "mru"

" Nerdtree
nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<cr>

" Startify
let g:startify_commands = [ { ',': 'NERDTreeToggle' } ]
let g:startify_custom_indices = ['o']

" Editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Vim test
let test#strategy = "neovim"
let test#neovim#term_position = "belowright"

nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g

" Markdown
let g:mkdp_preview_options = {
    \ 'disable_sync_scroll': 1,
    \ }

