source $HOME/.config/nvim/defaults.vim
source $HOME/.config/nvim/my_pluggins.vim
source $HOME/.config/nvim/mappings.vim

lua require('comp_settings')
lua require('telescope_settings')
" lualine and trouble setup
lua require('other_settings')
lua require('lsp_settings')

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:rustfmt_autosave = 1

" requires ripgrep to be installed
let g:ackprg = 'rg --vimgrep --smart-case'
let g:ack_use_cword_for_empty_search = 1

" use local prettier lib
let g:neoformat_try_node_exe = 1

" colorscheme config
" let g:gruvbox_material_transparent_background = 1
" let g:sonokai_transparent_background = 1

" Load the colorscheme
colorscheme gruvbox-material


autocmd BufWritePre *.{js,ts,tsx,json,css,scss} execute ':Neoformat prettier'
