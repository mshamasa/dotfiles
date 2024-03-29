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
" indent visual selection left,right
vnoremap L >gv
vnoremap H <gv
" copy/paste
vnoremap <leader>cp "*y
vnoremap <leader>pt "*p

" Open in new tab
noremap <silent>gf <C-W>gf

noremap <S-Left> :tabprevious<CR>
noremap <S-Right> :tabnext<CR>

" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags(require('telescope.themes').get_dropdown({}))<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches(require('telescope.themes').get_dropdown({}))<cr>

" diagnostic window to display
nnoremap <leader>e :lua vim.diagnostic.open_float(0, {scope="line"})<cr>

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
