" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('yml', '141', 'none', '#af87ff', '#')
call NERDTreeHighlightFile('html', '73', 'none', '#5fafaf', '#')
call NERDTreeHighlightFile('haml', '73', 'none', '#5fafaf', '#')
call NERDTreeHighlightFile('jade', '73', 'none', '#5fafaf', '#')
call NERDTreeHighlightFile('slim', '73', 'none', '#5fafaf', '#')
call NERDTreeHighlightFile('styl', '167', 'none', '#d75f5f', '#')
call NERDTreeHighlightFile('less', '35', 'none', '#00af5f', '#')
call NERDTreeHighlightFile('css', '35', 'none', '#00af5f', '#')
call NERDTreeHighlightFile('js', '208', 'none', '#ff8700', '#')
call NERDTreeHighlightFile('jsx', '33', 'none', '#0087ff', '#')
call NERDTreeHighlightFile('coffee', '31', 'none', '#0087af', '#')
call NERDTreeHighlightFile('php', '60', 'none', '#5f5f87', '#')
call NERDTreeHighlightFile('rb', '167', 'none', '#d75f5f', '#')
call NERDTreeHighlightFile('erb', '147', 'none', '#afafff', '#')
call NERDTreeHighlightFile('hbs', '166', 'none', '#d75f00', '#')
