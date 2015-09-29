set nocompatible              " be iMproved, required

syntax enable
colorscheme hybrid
filetype off                  " required

:set tabstop=2 shiftwidth=2 expandtab
:set nu
:set hls
:set clipboard=unnamed
:set foldlevel=99
:set path=,,
:set clipboard=unnamedplus

nnoremap <A-j> :m .+1<CR>==
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

nmap <S-u> O<Esc>j
nmap <CR> o<Esc>k

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

execute pathogen#infect()
