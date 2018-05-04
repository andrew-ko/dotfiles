function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

autocmd! BufWritePost * Neomake
" let g:neomake_verbose = 3
let g:neomake_error_sign = {'text': '✖', 'texthl': 'GruvboxBlueSign'}
" let g:neomake_highlight_columns = 0
" let g:neomake_highlight_lines = 0

" CSS
" let g:neomake_css_enabled_makers = ['stylelint']

" PHP
let g:neomake_php_phpcs_args_standard = 'PSR2'

" JS/JSX
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

" add flow
if findfile('.flowconfig', '.;') !=# ''
  let g:flow#enable = 0

  let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

  if g:flow_path != 'flow not found'
    let g:neomake_javascript_flow_maker = {
          \ 'exe': 'sh',
          \ 'args': ['-c', g:flow_path.' --json 2> /dev/null | flow-vim-quickfix'],
          \ 'errorformat': '%E%f:%l:%c\,%n: %m',
          \ 'cwd': '%:p:h'
          \ }

    let g:neomake_jsx_flow_maker = g:neomake_javascript_flow_maker

    let g:neomake_javascript_enabled_makers = g:neomake_javascript_enabled_makers + [ 'flow']
    let g:neomake_jsx_enabled_makers = g:neomake_jsx_enabled_makers + [ 'flow']

    " A plugin for deoplete to get flow autocompletion functionality.
    " let g:deoplete#sources#flow#flow_bin = g:flow_path
  endif
endif
