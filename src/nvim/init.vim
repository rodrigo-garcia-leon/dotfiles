" {{{ vundle 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/fzf'
Plugin 'leafgarland/typescript-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'morhetz/gruvbox'
Plugin 'octave.vim--'
call vundle#end()
" }}}
" {{{ color 
syntax enable
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if has('nvim')
  set termguicolors
endif
colorscheme gruvbox
" }}}
" {{{ spaces & tabs 
filetype plugin indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd filetype crontab setlocal nobackup nowritebackup
" }}}
" {{{ ui 
set number
set relativenumber
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set shortmess+=I
set backspace=indent,eol,start
" }}}
" {{{ search 
set incsearch
set hlsearch
set smartcase
set gdefault
" }}}
" {{{ windows 
set diffopt=vertical
set splitbelow
set splitright
" }}}
" {{{ leader shortcuts 
let mapleader=' '
noremap <leader>ev :e $MYVIMRC<CR>
noremap <leader>sv :so $MYVIMRC<CR>
noremap <leader>tn :tabe<CR>
noremap <leader>bl :ls<CR>
noremap <leader>bn :bn<CR>
noremap <leader>bp :bp<CR>
noremap <leader>bd :bd<CR>
noremap <leader>ft :NERDTreeToggle<CR>
noremap <leader>tf :set cc=80<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>pi :PluginInstall<CR>
noremap <leader>pc :PluginClean<CR>
noremap <leader>sy """+y
noremap <leader>sp """+p
noremap <leader>sc :noh<CR>
xnoremap < <gv
xnoremap > >gv
" }}}
" {{{ airline 
let g:airline_powerline_fonts=1
let g:airline_symbols={}
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_symbols.crypt='🔒'
let g:airline_symbols.paste='ρ'
let g:airline_symbols.spell='Ꞩ'
let g:airline_symbols.notexists='∄'
let g:airline_symbols.whitespace='Ξ'
let g:airline_symbols.branch=''
let g:airline_symbols.readonly=''
let g:airline_symbols.linenr='☰'
let g:airline_symbols.maxlinenr=''
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:airline_theme='gruvbox'
" }}}
" {{{ syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_html_checkers=['eslint']
let g:syntastic_html_eslint_exec='$(npm bin)/eslint'
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exec='$(npm bin)/eslint'
" }}}
" {{{ fzf 
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob """!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
" }}}
" {{{ python 
let g:python3_host_prog='/Users/rodrigogarcialeon/.virtualenvs/neovim/bin/python'
" }}}
" {{{ ruby 
let g:loaded_ruby_provider=1
" }}}
" vim:foldmethod=marker:foldlevel=0
