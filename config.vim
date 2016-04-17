" ---------------
" Color
" ---------------
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-atelierlakeside

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
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" move between splits with CTRL + j, k, l, h
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
noremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H> " STOOOOPID : https://github.com/neovim/neovim/issues/2048

nnoremap <silent> ]<Space> :<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "'[-1"<CR>
nnoremap <silent> [<Space> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>]'"

" vim-buffergator
" https://github.com/jeetsukumaran/vim-buffergator
let g:buffergator_viewport_split_policy = "T"

" custom command
:command JSON %!python -m json.tool

nmap ,f :FZF

" Syntastic
" http://jshint.com/
let g:syntastic_javascript_checkers = ['jshint']
