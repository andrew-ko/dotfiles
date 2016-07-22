" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('lock', 'Black', 'none', 'grey', '#151515')
call NERDTreeHighlightFile('yml', '141', 'none', '#af87ff', '#151515')
call NERDTreeHighlightFile('html', '73', 'none', '#5fd75f', '#151515')
call NERDTreeHighlightFile('haml', '73', 'none', '#5fd75f', '#151515')
call NERDTreeHighlightFile('jade', '73', 'none', '#5fd75f', '#151515')
call NERDTreeHighlightFile('slim', '73', 'none', '#5fd75f', '#151515')
" call NERDTreeHighlightFile('twig', '34', 'none', '#00af00', '#151515')
call NERDTreeHighlightFile('less', 'LightBlue', 'none', 'LightBlue', '#151515')
call NERDTreeHighlightFile('styl', '167', 'none', '#afafff', '#151515')
call NERDTreeHighlightFile('css', '77', 'none', '#5fd75f', '#151515')
call NERDTreeHighlightFile('js', '208', 'none', '#ffd75f', '#151515')
call NERDTreeHighlightFile('es6', '208', 'none', '#ffd75f', '#151515')
call NERDTreeHighlightFile('jsx', '33', 'none', '#ffd75f', '#151515')
call NERDTreeHighlightFile('coffee', '31', 'none', '#ffd75f', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('rb', '167', 'none', '#d75f5f', '#151515')
call NERDTreeHighlightFile('erb', '147', 'none', '#afafff', '#151515')
