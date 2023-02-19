local lsp_lines = require('lsp_lines')
-- Diagnostic
vim.diagnostic.config({
  underline = true,
  virtual_text = false,  -- default: true
  signs = true,
  update_in_insert = false,
  virtual_lines = {
    only_current_line = false,
  }
})

lsp_lines.setup()
