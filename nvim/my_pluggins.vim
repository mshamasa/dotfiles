call plug#begin()

" file nav
Plug 'preservim/nerdtree'

" git and tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'

" black to format python code
Plug 'stevearc/conform.nvim'

" Themes
Plug 'sainnhe/gruvbox-material'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" syntax highlight and status bar
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'pangloss/vim-javascript'
Plug 'jparise/vim-graphql'
Plug 'rust-lang/rust.vim'

Plug 'folke/trouble.nvim'
Plug 'mileszs/ack.vim'

" auto complete and LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind.nvim'

call plug#end()
