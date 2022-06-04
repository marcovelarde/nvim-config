-- Sets
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.smarttab = true
vim.opt.cindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.encoding = "utf-8"
vim.opt.hidden = true
vim.opt.undofile = true
vim.opt.colorcolumn = "95"
vim.opt.mouse = "a"
vim.opt.background = "dark"
vim.cmd("set undodir=~/.vim/undodir")
vim.cmd("set nohlsearch")
vim.cmd("colorscheme deep-space")
vim.cmd("set noswapfile")
vim.cmd("set nobackup")
vim.cmd("autocmd FileType python :setlocal shiftwidth=4 colorcolumn=80")
vim.cmd("autocmd FileType go :setlocal shiftwidth=4 colorcolumn=100")

-- Neovide
vim.opt.guifont = "Source Code Pro:h11"

-- Indentation
vim.opt.list = true
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
}

-- Python provider
vim.g.python3_host_prog = '/home/presi/nvim-venv/bin/python'

-- Airline
vim.g.airline_theme = 'apprentice'
vim.g.deepspace_italics = 1
vim.cmd("let g:airline#extensions#tabline#enabled = 1")
