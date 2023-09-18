local api = require'nvim-tree.api'

local WIDTH_RATIO = 0.25
local HEIGHT_RATIO = 0.4

-- Based on https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes#center-a-floating-nvim-tree-window
local function open_win_config()
  local screen_w = vim.opt.columns:get()
  local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
  local window_w = screen_w * WIDTH_RATIO
  local window_h = screen_h * HEIGHT_RATIO
  local window_w_int = math.floor(window_w)
  local window_h_int = math.floor(window_h)
  local center_x = (screen_w - window_w) / 2
  local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
  return {
    border = 'rounded',
    relative = 'editor',
    row = center_y,
    col = center_x,
    width = window_w_int,
    height = window_h_int,
  }
end

require'nvim-tree'.setup {
  auto_reload_on_write = false,
  disable_netrw       = false, -- true,
  hijack_netrw        = true,
  hijack_cursor       = false, -- true
  hijack_unnamed_buffer_when_opening = false,
  open_on_tab         = false,
  prefer_startup_root = false,
  sync_root_with_cwd  = true, -- false,
  reload_on_bufenter  = false,
  respect_buf_cwd     = false,
  on_attach = "default",
  select_prompts = false,
  hijack_directories  = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  filters = {
    dotfiles = false,
  },
  view = {
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
    adaptive_size = false,
    centralize_selection = true,
    side = 'left',
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    float = {
      quit_on_focus_loss = true,
      enable = true,
      open_win_config = open_win_config,
    }
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = true,
    full_name = false,
    highlight_opened_files = "none",
    root_folder_label = true,
    indent_width = 2,
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        none = " ",
      }
    },
    icons = {
      webdev_colors = api.config.use_icons,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = api.config.use_icons,
        folder = api.config.use_icons,
        folder_arrow = api.config.use_icons,
        git = api.config.use_icons,
      },
    },
  },
  actions = {
    open_file = {
      resize_window = false
    }
  }
}
