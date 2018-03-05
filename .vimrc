call plug#begin()
" General Plugin
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
" Auto-Complete
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
" Lanague Plugins
Plug 'fatih/vim-go' 
Plug 'Chiel92/vim-autoformat'
Plug 'othree/html5.vim'
Plug 'rstacruz/vim-hyperstyle'
Plug 'hail2u/vim-css3-syntax'
Plug 'mattn/emmet-vim'
call plug#end()

filetype plugin on
colorscheme VisualStudioDark
" Disable Arrow keys in Escape mode
"
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

" Rebind escape to JJ
inoremap jk <ESC>
" Disable ESC in insert mode
inoremap <esc> <nop>
" Show line numbers
set number
" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" ultisnips
let g:UltiSnipsSnippetsDir = $HOME."/.dotfiles/UltiSnips"
let g:UltiSnipsSnippetDirectories = ['UltiSnips', $HOME.'/.dotfiles/UltiSnips']
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEnableSnipMate = 0
autocmd BufEnter,BufNew *.tmpl setf tmpl.html
let g:user_emmet_leader_key='<c-b>'
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
