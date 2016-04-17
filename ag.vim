" ---------------
" silver searcher settings
" ---------------

let g:ackprg = "ag --vimgrep"

" bind K to grep word under cursor
" https://robots.thoughtbot.com/faster-grepping-in-vim
nnoremap K :Ag <C-R><C-W> <CR>:cw<CR>

" Open the Ag command and place the cursor into the quotes
" https://github.com/skwp/dotfiles/blob/master/vim/settings/ag.vim
nmap ,ag :Ag! <Left>
nmap ,af :AgFile! <Left>

" always start searching from your project root instead of the cwd
let g:ag_working_path_mode="r"
