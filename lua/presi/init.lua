require("presi.lsp")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

-- Indentation
vim.opt.list = true
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
}

-- Python provider
vim.g.python3_host_prog = '/home/presi/nvim-venv/bin/python'


-- Completation behavior
vim.g.completion_chain_complete_list = "['exact', 'substring', 'fuzzy']"
vim.o.completeopt = 'menuone,noselect'

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t('<C-n>')
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t('<Plug>(vsnip-expand-or-jump)')
  elseif check_back_space then
    return t('<Tab>')
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t('<C-p>')
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t('<Plug>(vsnip-jump-prev)')
  else
    return t('<S-Tab>') -- or <C-h>
  end
end

-- vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.tab_complete()', {expr = true, noremap = false})
-- vim.api.nvim_set_keymap('s', '<Tab>', 'v:lua.tab_complete()', {expr = true, noremap = false})
-- vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.s_tab_complete()', {expr = true, noremap = false})
-- vim.api.nvim_set_keymap('s', '<S-Tab>', 'v:lua.s_tab_complete()', {expr = true, noremap = false})
