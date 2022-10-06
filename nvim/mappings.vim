let mapleader = " "
noremap <silent><leader>nt :NERDTree<CR>
noremap <silent><leader>nf :NERDTreeFind<CR>
nnoremap <silent><leader>ps :Ack!<Space>
noremap <silent><leader>h :wincmd h<CR>
noremap <silent><leader>j :wincmd j<CR>
noremap <silent><leader>k :wincmd k<CR>
noremap <silent><leader>l :wincmd l<CR>

" move visual selection up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" Indent visual selection left,right
vnoremap L >gv
vnoremap H <gv

" Open in new tab
noremap <silent>gf <C-W>gf

noremap <S-Left> :tabprevious<CR>
noremap <S-Right> :tabnext<CR>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy({}))<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches(require('telescope.themes').get_dropdown({}))<cr>
