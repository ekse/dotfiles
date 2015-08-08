" based on this article http://statico.github.io/vim.html
" uses pathogen to manage plugins https://github.com/tpope/vim-pathogen

call pathogen#helptags()
call pathogen#infect()

nmap j gj
nmap k gk

"Ctrl-s for saving
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

cnoremap <C-a>  <Home>
"cnoremap <C-b>  <Left>
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

nmap <C-PageUp> :bprevious!<CR> 
nmap <C-PageDown> :bnext!<CR> 
nmap <C-w> :bdelete<CR>

set shell=/bin/sh " needed when using fish shell
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

" clang-format
map <C-K> :pyf ~/.vim/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.vim/clang-format.py<cr>
map <C-J> gg<S-V>G<C-K>


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

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Rust defines for Tagbar
 let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits,traits',
        \'i:impls,trait implementations',
    \]
    \}

" airline
let g:airline#extensions#tabline#enabled = 1

" NERDTree
nmap <F5> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 2

function! ColorTermZenburn()
  colorscheme zenburn
  highlight Normal ctermbg=234
  let g:zenburn_high_Contrast = 1
endfunction

" clang_complete
let g:clang_library_path = "/usr/lib/x86_64-linux-gnu/libclang.so.1"

" racer (Rust)
set hidden
let g:racer_cmd = "/home/ekse/git/_rust/racer/target/release/racer"

" gvim

if !has('gui_running')
  if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
    call ColorTermZenburn()
  endif
endif

if has('gui_running')
    " hide toolbar
    colorscheme gruvbox 
    set background=dark
    set guioptions-=T
    set guifont=Monospace\ 10

endif
syntax on

