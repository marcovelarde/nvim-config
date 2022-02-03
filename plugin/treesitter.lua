if not pcall(require, "nvim-treesitter") then
  return
end

local custom_captures = {
  ["function.call"] = "LuaFunctionCall",
  ["function.bracket"] = "Type",
  ["namespace.type"] = "TSNamespaceType",
}

local _ = require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "go",
    "rust",
    "python",
    "typescript",
    "vue",
    "pug",
    "css",
    "lua",
    "vim"
  },
  highlight = {
    enable = true,
    use_languagetree = false,
    -- disable = { "vue" },
    custom_captures = custom_captures,
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false },

    smart_rename = {
      enable = false,
      keymaps = {
        -- mapping to rename reference under cursor
        smart_rename = "grr",
      },
    },

    -- TODO: This seems broken...
    navigation = {
      enable = false,
      keymaps = {
        goto_definition = "gnd", -- mapping to go to definition of symbol under cursor
        list_definitions = "gnD", -- mapping to list all definitions in current file
      },
    },
  },
}
