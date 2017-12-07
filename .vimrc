filetype plugin indent on
set tabstop=2
set laststatus=2
set shiftwidth=2
set expandtab
set backspace=2
set nu
set hls
set foldlevel=99
set smartindent
set regexpengine=1
set autoread
set clipboard=unnamed

" for vim-git-gutter to update gutter more quickly
set updatetime=250

syntax enable
colorscheme hybrid

nnoremap <A-j> :m .+1<CR>==
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

nmap <S-u> O<Esc>j
nmap <CR> o<Esc>k

nmap <C-n> :NERDTreeToggle<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:go_fmt_command = "goimports"

let g:jsx_ext_required = 0

let g:airline_theme='zenburn'

" use eslint instead of default eshint
let g:syntastic_javascript_checkers = ['eslint']

" Make gitgutter appear by default so that the column doesn't jump around when
" there are edits
let g:gitgutter_sign_column_always = 1

execute pathogen#infect()
