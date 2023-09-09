local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')
-- vim.call(Plug.begin(), '~/.vim/plugged')

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

Plug('glepnir/lspsaga.nvim')
Plug('simrat39/symbols-outline.nvim')

-- LSP lines
Plug('https://git.sr.ht/~whynothugo/lsp_lines.nvim')

-- Color schemes
Plug('morhetz/gruvbox')
Plug('ayu-theme/ayu-vim')
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
Plug('tbastos/vim-lua')
Plug('posva/vim-vue')
Plug('digitaltoad/vim-pug')
Plug('psf/black')
Plug('ray-x/go.nvim')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('nvim-treesitter/playground')
Plug('nvim-neorg/neorg')
Plug('folke/which-key.nvim')

-- Lua plugins
Plug('folke/neodev.nvim')

-- Helpers
Plug('terrortylor/nvim-comment')
Plug('JoosepAlviste/nvim-ts-context-commentstring')
Plug('prettier/vim-prettier', { ['do'] = 'yarn install --frozen-lockfile --production' })
Plug('lukas-reineke/indent-blankline.nvim')
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })
Plug('ThePrimeagen/harpoon')

-- Status bottom bar
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')

-- File explorer
Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')

-- Scroll
Plug('psliwka/vim-smoothie')

-- Load dotenv
Plug('tpope/vim-dotenv')

-- Git integration
Plug('tpope/vim-fugitive')
Plug('sindrets/diffview.nvim')

-- Database
Plug('tpope/vim-dadbod')
Plug('kristijanhusak/vim-dadbod-ui')

-- Terminal
Plug('akinsho/toggleterm.nvim')

-- Copilot
Plug('github/copilot.vim')

-- Other
Plug('vinnymeller/swagger-preview.nvim', { ['do'] = 'npm install -g swagger-ui-watcher' })

vim.call('plug#end')
-- vim.call(Plug.end())
