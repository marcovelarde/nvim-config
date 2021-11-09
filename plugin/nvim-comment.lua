require("nvim_comment").setup {
  context_commentstring = { enable = true },
  marker_padding = true,
  comment_empty = false,
  create_mappings = true,
  hook = function()
    if vim.api.nvim_buf_get_option(0, "filetype") == "vue" then
      require("ts_context_commentstring.internal").update_commentstring()
    end
  end
}
