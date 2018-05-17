" https://github.com/junegunn/vim-plug
"
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
" Plug 'pangloss/vim-javascript'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'elzr/vim-json'
" Plug 'chrisbra/csv.vim'
" Plug 'elixir-lang/vim-elixir'
" Plug 'Raimondi/delimitMate'
Plug 'easymotion/vim-easymotion'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'numkil/ag.nvim' " brew install the_silver_searcher
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'bronson/vim-trailing-whitespace'
" Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' " https://github.com/ryanoasis/vim-devicons
Plug 'airblade/vim-gitgutter'
" HUZZZA WUH????
Plug 'brooth/far.vim'
Plug 'neomake/neomake'
Plug 'benjie/neomake-local-eslint.vim'

Plug 'joukevandermaas/vim-ember-hbs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mattn/emmet-vim'

" Plug 'atelierbram/vim-colors_duotones'
" Plug 'isRuslan/vim-es6'
" Plug 'smancill/darkglass'
" Plug 'leafgarland/typescript-vim'

" TODO: Remove the snippets you'll never use
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
"


call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
