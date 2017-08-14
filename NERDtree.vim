" ---------------
" NERDTree settings
" ---------------

map <leader>n :NERDTreeToggle<CR> " Toggle NERDTree
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:NERDSpaceDelims = 1
let g:NERDTreeWinSize = 30

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#2e2a31')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#2e2a31')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#2e2a31')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#2e2a31')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#2e2a31')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#2e2a31')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#2e2a31')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#2e2a31')
call NERDTreeHighlightFile('hbs', 'yellow', 'none', '#f7951d', '#2e2a31')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#2e2a31')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#2e2a31')
call NERDTreeHighlightFile('scss', 'Magenta', 'none', '#e293f2', '#2e2a31')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#2e2a31')
call NERDTreeHighlightFile('js', 'blue', 'none', '#1dbdf7', '#2e2a31')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#2e2a31')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#2e2a31')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#2e2a31')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#2e2a31')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#2e2a31')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#2e2a31')
