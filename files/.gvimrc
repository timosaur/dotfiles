map <m-t> :tabnew<cr>:CommandT<cr>
map <m-w> :q<cr>
map <m-e> :Texplore<cr>
map <m-E> :Vexplore!<cr>
map <m-r> :CommandT<cr>

" Tabs
nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
nnoremap <silent> <A-S-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-S-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Smooth Scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 5, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 2)<CR>

let g:session_autosave = 'yes'
set winaltkeys=no
set clipboard=unnamed
