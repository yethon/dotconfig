" ---------------
" Color
" ---------------
"
" Set the background theme to dark
set background=dark

" Call the theme one
" colorscheme base16-unikitty-dark
" colorscheme base16-unikitty-dark
" colorscheme base16-harmonic
colorscheme base16-atelier-sulphurpool
" colorscheme challenger_deep

" Don't forget set the airline theme as well.
" let g:airline_theme='challenger_deep'

" Note, the above line is ignored in Neovim 0.1.5 above, use this line instead.
set termguicolors

" ---------------
" UI
" ---------------
set number         " Show line numbers
set nowrap         " don't wrap lines
set tabstop=2      " a tab is two spaces
set shiftwidth=2   " an autoindent (with <<) is two spaces
set expandtab      " use spaces, not tabs
set list           " Show invisible characters
set encoding=utf-8 " Set default encoding to UTF-8
set title          " Set the title of the window in the terminal to the file
set ignorecase     " Set case insensitive search
syntax enable

" List chars
set listchars=""          " Reset the listchars
set listchars=tab:\ \     " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.    " show trailing spaces as dots
set listchars+=extends:>  " The character to show in the last column when wrap is
" off and the line continues beyond the right of the screen
set listchars+=precedes:< " The character to show in the last column when wrap is
" off and the line continues beyond the left of the screen

" Comma is your leader
let mapleader=","

let g:airline_powerline_fonts = 1

nnoremap Q <nop>

" upper/lower word
" nmap <leader>u mQviwU`Q
" nmap <leader>l mQviwu`Q

" upper/lower first char of word
" nmap <leader>U mQgewvU`Q
" nmap <leader>L mQgewvu`Q

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" move between splits with CTRL + j, k, l, h
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H> " STOOOOPID : https://github.com/neovim/neovim/issues/2048

" noremap <silent> ]<Space> :<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "'[-1"<CR>
" noremap <silent> [<Space> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>]'"

" vim-buffergator
" https://github.com/jeetsukumaran/vim-buffergator
let g:buffergator_viewport_split_policy = "T"

" custom command
:command JSON %!python -m json.tool

" NEOMAKE
"
let g:neomake_javascript_enabled_makers = ['eslint']

let g:neomake_css_enabled_makers = ['csslint']

" TEST this
let g:neomake_html_enabled_makers = ['htmlhint']
" let g:neomake_html_enabled_makers=['html-tidy']

" " When writing a buffer.
call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('rw', 1000)

" DEOPLETE
let g:deoplete#enable_at_startup = 1

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
  \]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_loc_list_height = 5
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1

" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_html_checkers=['html-tidy']

" Override eslint with local version where necessary.
" let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
" if matchstr(local_eslint, "^\/\\w") == ''
" let local_eslint = getcwd() . "/" . local_eslint
" endif
" if executable(local_eslint)
" let g:syntastic_javascript_eslint_exec = local_eslint
" endif

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

set rtp+=/usr/local/opt/fzf
