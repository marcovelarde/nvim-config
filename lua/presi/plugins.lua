local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

-- LSP plugins
Plug('neovim/nvim-lspconfig')

-- Completation plugins
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/vim-vsnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
-- Plug('ackyshake/VimCompletesMe')

Plug('glepnir/lspsaga.nvim')
Plug('simrat39/symbols-outline.nvim')
Plug('nvim-treesitter/nvim-treesitter')

-- Color schemes
Plug('morhetz/gruvbox')
Plug('ayu-theme/ayu-vim')
Plug('folke/lsp-colors.nvim')
Plug('navarasu/onedark.nvim')
Plug('tyrannicaltoucan/vim-deep-space')

-- Telescope
Plug('nvim-lua/popup.nvim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')

-- go.nvim dependencies
Plug('mfussenegger/nvim-dap')
Plug('rcarriga/nvim-dap-ui')
Plug('theHamsta/nvim-dap-virtual-text')

-- Syntax plugins
Plug('nvim-lua/completion-nvim')
Plug('tbastos/vim-lua')
Plug('posva/vim-vue')
Plug('digitaltoad/vim-pug')
Plug('psf/black')
-- Plug('crispgm/nvim-go')
Plug('ray-x/go.nvim')
-- Plug('jiangmiao/auto-pairs')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-treesitter/playground')

-- Lua plugins
Plug('tjdevries/nlua.nvim')

-- Helpers
Plug('terrortylor/nvim-comment')
Plug('JoosepAlviste/nvim-ts-context-commentstring')
Plug('prettier/vim-prettier', { ['do'] = 'yarn install' } )
Plug('lukas-reineke/indent-blankline.nvim')
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' } )

-- Status bottom bar
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')

-- File explorer
Plug('kyazdani42/nvim-web-devicons') -- for file icons
Plug('kyazdani42/nvim-tree.lua')

vim.call('plug#end')
