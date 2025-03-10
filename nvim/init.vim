source $HOME/.config/nvim/defaults.vim
source $HOME/.config/nvim/my_pluggins.vim
source $HOME/.config/nvim/mappings.vim

" lualine and trouble setup
lua require('comp_settings')
lua require('formatter')
lua require('lsp_settings')
lua require('other_settings')
lua require('telescope_settings')

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['^node_modules$']

" requires ripgrep to be installed
let g:ackprg = 'rg --vimgrep --smart-case'
let g:ack_use_cword_for_empty_search = 1


" Load the colorscheme
" catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
colorscheme catppuccin-frappe

