let g:mapleader = "\<Space>"

nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>bd :bd <CR>
nnoremap <leader>cl :close<CR>
nnoremap <leader>bf :buffers<CR>
vmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)
" fugitive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
" prevent new line from becoming a comment if it is
nnoremap <leader>o o<Esc>^Da
nnoremap <leader>O O<Esc>^Da

" this is broken but I still want it
" Better nav for omnicomplete
 inoremap <expr> <c-j> ("\<C-n>")
 inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" move screen horizontally
noremap <C-M-h>  zh
noremap <C-M-l>  zl

" I hate escape more than anything else
inoremap kj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
inoremap jj <Esc>

" Easy CAPS (case)
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" issue with experimental vim-surround binding
" unmap <C-S>
" unmap <C-S>
" Alternate way to save
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a
noremap <C-S-s> :wall<CR>
inoremap <C-S-s> <Esc>:wall<CR>a

" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" Use control-c instead of escape
"nnoremap <C-c> <Esc>
"
" <TAB>: completion.
" inoremap <expr><TAB> pumvisible() ? "\<C-j>" : "\<TAB>"
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l




" unhighlight search word 
map <silent><Esc>  :noh<CR>

map <C-S-f> <Esc> :Rg<Space>



"close all other buffers
"nnoremap <C-k>u :%bdelete|edit #|normal `"

"read file if it is modifed externally
" set autoread
"set autowrite

set ignorecase
set smartcase

nnoremap gll oconsole.log("LINE: <C-r>=line('.')<Esc>","")<Esc>F"i

nnoremap glll oconsole.log("LINE2: <C-r>=line('.')<Esc> _ ",)<Esc>F,pF_pba<Esc>j

" func LogIt()
"   let currentWord = expand("<cword>")
"   echom currentWord
"    oconsole.log("LINE: <C-r>=line('.') <Esc>currentWord",currentWord)<Esc>^
" endfunc
" nnoremap gll :call LogIt()
" nnoremap  <leader>iu :exe "grep -R " . shellescape(expand("<cWORD>")) . " ."<cr>
" nnoremap <leader>iu :silent execute "grep! -R " . shellescape(expand("<cWORD>")) . " ."<cr>:copen<cr>



function ClearRegs() abort
  let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
  for r in regs
    call setreg(r, @_)
  endfor
endfun

"noremap <C-k>u    :%bdelete|edit #|normal `"<CR>
noremap <C-k>u    :BufOnly <CR>




fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("bf","buffers")
"call SetupCommandAlias("cmm","Commentary")



" reopen last closed buffer
	map <C-S-t> <Esc> :tabnew#<CR>

	" map <C-z> <Esc> <C-z>
