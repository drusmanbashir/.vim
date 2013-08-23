
filetype plugin indent on
autocmd FileType html,python setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4


noremap! <C-s> <Esc>:w <CR>
noremap <silent> <F10> :set hlsearch! hlsearch?<CR>
set number 
set nowrap

nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
"=====================================MACROS & REGISTERS =============
noremap! <F5> <Esc>"ap
nnoremap <F5> "ap
noremap! <F6> <Esc>"bp
nnoremap <F6> "bp
nnoremap <F9> :make<CR>
"==================================	TABS=========================
noremap! <C-y> <Esc>:tabnew<CR>
noremap! <C-h> <Esc>:tabprevious<CR>
noremap! <C-l> <Esc>:tabnext<CR>
map! <S-Insert> <MiddleMouse>
noremap! <c-1> <Esc>:q!<CR>
nnoremap <c-1> <Esc>:q!<CR>

noremap <C-y> <Esc>:tabnew<CR>
noremap <C-h> <Esc>:tabprevious<CR>
noremap <C-l> <Esc>:tabnext<CR>
noremap <C-s> <Esc>:w <CR>
nnoremap <silent> <C-S-tab> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-tab> :execute 'silent! tabmove ' . tabpagenr()<CR>
"
" ===============================SYNTAX + SYNTASTIC SETTINGS================================================
syntax enable 
au BufNewFile,BufRead *.cpp set syntax=cpp11
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:statline_syntastic = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
set wildchar=<Tab> wildmenu wildmode=full
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E225'
"===============================BUFFER SHORTCUTS================================================
"nnoremap <S-tab> <Esc>:bprevious<CR>
nnoremap <C-Right> :bnext<CR>
nnoremap <C-Left> :bprevious<CR>
"   bnext is already mapped to <tab>
"        also note that <c-o> is also maaped to :bprevious
"        freed
"
"=======================================================================================================
map <S-Insert> <MiddleMouse>
"                                 COPY-PASTE FROM THE CLIPBOARD
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"==============================nerdtree==========================
nmap <silent> <c-a> :NERDTreeToggle<CR>
set expandtab
set autoindent
set autowrite
nnoremap <silent> <F11> :YRShow<CR>
nnoremap <C-\> :q!<CR>
