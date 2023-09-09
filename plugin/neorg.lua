require('neorg').setup {
  load = {
    ["core.defaults"] = {},  -- load default behavior
    ["core.concealer"] = {}, -- adds pretty icons to your documents
    ["core.dirman"] = {      -- manages nerog workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
        default_workspace = "notes",
      },
    },
    ["core.keybinds"] = {
      config = {
        hook = function(keybinds)
          local leader = keybinds.leader
          keybinds.unmap("norg", "n", leader .. "nn")
          keybinds.map("norg", "n", leader .. "m", "core.norg.dirman.new.note")
          keybinds.map("norg", "n", "<leader>m", "core.norg.dirman.new.note")
        end
      },
    },
  },
}
