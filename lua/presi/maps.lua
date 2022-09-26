local function map(kind, lhs, rhs, opts)
  vim.api.nvim_set_keymap(kind, lhs, rhs, opts or {})
  -- vim.keymap.set(kind, lhs, rhs, opts or {})
end

-- Mappings
-- Base Mappings
map('n', '<space><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })
map('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
map('n', '<leader>we', ':w<CR> :edit', { noremap = true, silent = true })
map('n', 'Y', 'y$', { noremap = true })
-- map('n', '<C-t>', ':tabclose<CR>', { noremap = true, silent = true })
map('i', '<C-BS>', '<C-o>cb', { noremap = true, silent = true })
map('i', '<C-Del>', '<C-o>cw', { noremap = true, silent = true })

-- Moving text
map('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true })
map('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true })
map('n', '<leader>j', ':m .+1<CR>==', { noremap = true })
map('n', '<leader>k', ':m .-2<CR>==', { noremap = true })
map('i', '<C-j>', '<esc>:m .+1<CR>==', { noremap = true })
map('i', '<C-k>', '<esc>:m .-2<CR>==', { noremap = true })

-- Undo break points?
-- map('i', ',', ',<C-g>u')
-- map('i', '.', '.<C-g>u')
-- map('i', ';', ';<C-g>u')
-- map('i', '[', '[<C-g>u')
-- map('i', '!', '!<C-g>u')
-- map('i', '?', '?<C-g>u')

-- Jumplist mutations?
-- map('n', '<expr>k', '(v:count > 5 ? "m\'" . v:count : "") . \'k\'', { expr = true })
-- map('n', '<expr>j', '(v:count > 5 ? "m\'" . v:count : "") . \'j\'', { expr = true })

-- Navigation
map('n', '<leader>v', '<cmd>vsplit<CR>', { noremap = true })
map('n', '<leader>s', '<cmd>split<CR>', { noremap = true })
map('n', '<C-l>', '<cmd>bn<CR>', { noremap = true })
map('n', '<C-h>', '<cmd>bp<CR>', { noremap = true })
map('n', '<S-q>', '<cmd>bd<CR>', { noremap = true })
-- use loop slow 1gt
map('n', '<leader>0', '0gt', { noremap = true })
map('n', '<leader>1', '1gt', { noremap = true })
map('n', '<leader>2', '2gt', { noremap = true })
map('n', '<leader>3', '3gt', { noremap = true })
map('n', '<leader>4', '4gt', { noremap = true })
map('n', '<leader>5', '5gt', { noremap = true })
map('n', '<leader>6', '6gt', { noremap = true })
map('n', '<leader>7', '7gt', { noremap = true })
map('n', '<leader>8', '8gt', { noremap = true })
map('n', '<leader>9', '9gt', { noremap = true })

-- Clipboard
map('v', '<leader>p', '"_dp', { noremap = true })
map('n', '<leader>y', '"+y', { noremap = true })
map('v', '<leader>y', '"+y', { noremap = true })
map('n', '<leader>Y', 'gg"+yG', { noremap = true })

-- Telescope
map('n', '<C-p>', '<cmd>Telescope git_files<CR>', { noremap = true })
map('n', '<C-f>', '<cmd>Telescope find_files<CR>', { noremap = true })
map('n', '<C-s>', '<cmd>Telescope git_status<CR>', { noremap = true })
map('n', '<leader>b', '<cmd>Telescope buffers<CR>', { noremap = true })
map('n', '<leader>lg', '<cmd>Telescope live_grep<CR>', { noremap = true })
map('n', '<leader>ht', '<cmd>Telescope help_tags<CR>', { noremap = true })

-- ToggleTermi
-- map('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
map('n', '<C-t>', '<cmd>ToggleTerm<CR>', { noremap = true })
map('n', '1<C-t>', '<cmd>1ToggleTerm<CR>', { noremap = true })
map('n', '2<C-t>', '<cmd>2ToggleTerm<CR>', { noremap = true })
map('n', '3<C-t>', '<cmd>3ToggleTerm<CR>', { noremap = true })
map('n', '4<C-t>', '<cmd>4ToggleTerm<CR>', { noremap = true })

map('n', '<leader>ts', '<cmd>ToggleTerm direction=float<CR>', { noremap = true })
map('n', '<leader>ts2', '<cmd>2ToggleTerm direction=float<CR>', { noremap = true })
map('n', '<leader>ts3', '<cmd>3ToggleTerm direction=float<CR>', { noremap = true })
map('n', '<leader>ts4', '<cmd>4ToggleTerm direction=float<CR>', { noremap = true })

map('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<CR>', { noremap = true })
map('n', '<leader>tv2', '<cmd>2ToggleTerm direction=vertical<CR>', { noremap = true })
map('n', '<leader>tv3', '<cmd>3ToggleTerm direction=vertical<CR>', { noremap = true })
map('n', '<leader>tv4', '<cmd>4ToggleTerm direction=vertical<CR>', { noremap = true })

map('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<CR>', { noremap = true })
map('n', '<leader>th2', '<cmd>2ToggleTerm direction=horizontal<CR>', { noremap = true })
map('n', '<leader>th3', '<cmd>3ToggleTerm direction=horizontal<CR>', { noremap = true })
map('n', '<leader>th4', '<cmd>4ToggleTerm direction=horizontal<CR>', { noremap = true })

-- Commenter
map('v', '++', ':CommentToggle<CR>')
map('n', '++', ':CommentToggle<CR>')

-- LSP
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { silent = true })
map('n', 'gi', '<cmd>lua vim.lsp.bug.implementation()<CR>', { silent = true })
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { silent = true })
map('n', '<leader>sh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true })
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true })
map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true })
map('n', '<leader>sd', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', { noremap = true })
map('n', '<leader>gn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', { noremap = true })
map('n', '<leader>vll', '<cmd>call LspLocationList()<CR>', { noremap = true })
map('n', 'F', '<cmd>lua vim.lsp.buf.formatting()<CR>', { noremap = true })
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true })

-- Prettier
map('n', '<leader>f', ':Prettier<CR>', { silent = true })

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')
map('n', '<leader>n', ':NvimTreeFindFile<CR>')

-- SymbolsOutline
map('n', '<C-k>', ':SymbolsOutline<CR>')
