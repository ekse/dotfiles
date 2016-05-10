" based on this article http://statico.github.io/vim.html
" uses pathogen to manage plugins https://github.com/tpope/vim-pathogen
call pathogen#helptags()
call pathogen#infect()

nmap j gj
nmap k gk

"Ctrl-s for saving
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>

" Ctrl-w to close a tab
noremap <C-w> :BD<CR> "

" use the system clipboard
set clipboard=unnamed

cnoremap <C-a>  <Home>
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
set noeb

" clang-format
map <C-K> :pyf ~/.config/nvim/clang-format.py<cr>
imap <C-K> <c-o>:pyf ~/.config/nvim/clang-format.py<cr>
map <C-J> gg<S-V>G<C-K>

" ctags / cscope settings
map <C-b> :exec("tag ".expand("<cword>"))<CR>
if has('cscope')
    set cscopetag cscopeverbose
    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help
    command! -nargs=0 Cscope cs add cscope.out
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

" clang_complete
let g:clang_library_path = "/usr/lib/x86_64-linux-gnu/libclang.so.1"

" racer
set hidden
let g:racer_cmd= "/home/ekse/.multirust/toolchains/stable/cargo/bin/racer"
let $RUST_SRC_PATH="/home/ekse/git/rust/src/"

" Deoplete
let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert
imap     <Nul> <C-Space>
inoremap <expr><C-Space> deoplete#mappings#manual_complete()
inoremap <expr><BS>      deoplete#mappings#smart_close_popup()."\<C-h>"
" Go to definition with F2
nmap <F2> gd<CR>

" syntastic
nmap <F6> :SyntasticToggleMode<CR> 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Omni Completion
"filetype plugin on
set omnifunc=syntaxcomplete#Complete

colorscheme gruvbox
set background=dark
syntax on

