require('toggleterm').setup {
  on_open = function(term)
    -- Map <Esc> to return to normal mode in terminal buffers
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "t", "<Esc>", "<C-\\><C-n>", { noremap = true })

    -- Send <Esc> when toggling term
    -- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<esc>', true, false, true), 'm', true)
  end,
  start_in_insert = false,
  -- open_mapping = [[<c-\>]],  -- <C-T> seted in maps
  open_mapping = [[<c-t>]],
  hide_numbers = false,
  winbar = {
    enabled = true,
    name_formatter = function(term)
      return term.name
    end,
  },
}
