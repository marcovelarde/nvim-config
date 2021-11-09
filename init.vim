syntax on

call plug#begin('~/.vim/plugged')

" LSP plugins
Plug 'neovim/nvim-lspconfig'
" Completation plugins
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" Color schemes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'folke/lsp-colors.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'tyrannicaltoucan/vim-deep-space'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" go.nvim dependencies
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'

" Syntax plugins
Plug 'nvim-lua/completion-nvim'
Plug 'tbastos/vim-lua'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'
Plug 'psf/black'
" Plug 'crispgm/nvim-go'
Plug 'ray-x/go.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Lua plugins
Plug 'tjdevries/nlua.nvim'

" Helpers
Plug 'terrortylor/nvim-comment'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'lukas-reineke/indent-blankline.nvim'

" Status bottom bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

lua require("presi")

let mapleader = " "

set background=dark
set termguicolors
colorscheme deep-space
