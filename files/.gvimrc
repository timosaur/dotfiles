let g:session_autosave = 'yes'
set winaltkeys=no
set clipboard=unnamed

" Smooth Scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 5, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 5, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 2)<CR>

if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :tabnew<cr>:CommandT<cr>
    map <D-e> :Texplore<cr>
    map <D-E> :Vexplore!<cr>
    map <D-r> :CommandT<cr>
    " Tabs
    nnoremap <D-Left> :tabprevious<CR>
    nnoremap <D-Right> :tabnext<CR>
    nnoremap <silent> <D-S-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
    nnoremap <silent> <D-S-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

    noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 4)<CR>
    noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 4)<CR>
    noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 8)<CR>
    noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 8)<CR>
else
    map <m-t> :tabnew<cr>:CommandT<cr>
    map <m-w> :q<cr>
    map <m-e> :Texplore<cr>
    map <m-E> :Vexplore!<cr>
    map <m-r> :CommandT<cr>
    " Tabs
    nnoremap <A-Left> :tabprevious<CR>
    nnoremap <A-Right> :tabnext<CR>
    nnoremap <silent> <A-S-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
    nnoremap <silent> <A-S-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
endif
