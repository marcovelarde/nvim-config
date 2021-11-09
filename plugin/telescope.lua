local tele_themes = require'telescope.themes'

-- Base opts for all telescope.buildin
local function base_opts(opts)
  local _opts = tele_themes.get_dropdown {
    winblend = 25,
    border = true,
    previewer = false,
  }
  return vim.tbl_deep_extend("force", _opts, opts)
end

local gf_opts = base_opts {}

local ff_opts = base_opts {
  find_command = { "rg", "--ignore", "--hidden", "--files", "--unrestricted" },
}

require('telescope').setup {
  pickers = {
    git_files = gf_opts,
    find_files = ff_opts,
  }
}

