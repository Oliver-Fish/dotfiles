call plug#begin()
" General Plugin
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'elzr/vim-json'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'SirVer/ultisnips'
if has('nvim')
  Plug 'Shougo/deoplete.nvim'
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"Frontend Plugins
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'maksimr/vim-jsbeautify' 
Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
"Go Plugins
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go'
call plug#end()

filetype plugin on
colorscheme VisualStudioDark
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Disable Two Finger Scrolling
noremap <ScrollWheelUp>      <nop>
noremap <S-ScrollWheelUp>    <nop>
noremap <C-ScrollWheelUp>    <nop>
noremap <ScrollWheelDown>    <nop>
noremap <S-ScrollWheelDown>  <nop>
noremap <C-ScrollWheelDown>  <nop>
noremap <ScrollWheelLeft>    <nop>
noremap <S-ScrollWheelLeft>  <nop>
noremap <C-ScrollWheelLeft>  <nop>
noremap <ScrollWheelRight>   <nop>
noremap <S-ScrollWheelRight> <nop>
noremap <C-ScrollWheelRight> <nop>

" Rebind escape to Jk
inoremap jk <ESC>
" Disable ESC in insert mode
inoremap <esc> <nop>
" Show line numbers
set number

" Disable Swap File
set noswapfile

" Buffer Controls
set hidden
nnoremap <C-P> :bnext<CR>
nnoremap <C-I> :bprev<CR>

" Plugin Settings

" NerdTree
" Nerdtree toggle CTRL+N
map <C-n> :NERDTreeToggle<CR>

"emmet-vim settings
"Only allow emmet-vim on html and css files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"Set emmet key to ctrl+x
let g:user_emmet_leader_key='<C-X>'

"js-beautify settings
" for javascript
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <c-f> :call CSSBeautify()<cr>

"deoplete settings
"Enable at startup
let g:deoplete#enable_at_startup = 1
"Remap keys to CTRL + J and CTRL + K
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
"Disable Preview Window popup
set completeopt-=preview
