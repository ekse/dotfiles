" based on this article http://statico.github.io/vim.html
" uses pathogen to manage plugins https://github.com/tpope/vim-pathogen

call pathogen#helptags()
call pathogen#infect()

nmap j gj
nmap k gk

cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>
nmap \q :nohlsearch<CR>

set incsearch
set ignorecase
set smartcase
set hlsearch

set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4

set number
set nobackup

" ctags / cscope settings
map <C-y> :exec("tag ".expand("<cword>"))<CR>
if has('cscope')
    set cscopetag cscopeverbose
    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help
    command -nargs=0 Cscope cs add cscope.out
endif 

nmap <F8> :TagbarToggle<CR>

function! ColorTermZenburn()
  colorscheme zenburn
  highlight Normal ctermbg=234
  let g:zenburn_high_Contrast = 1
endfunction

if !has('gui_running')
  if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
    call ColorTermZenburn()
  endif
endif
syntax on

