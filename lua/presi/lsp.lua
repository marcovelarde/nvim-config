-- sumneko_root_path conf
-- sumneko_binary conf

local function on_attach()
    -- TODO: Implement Telescopic stuff
end

local cmp_nvim = require'cmp_nvim_lsp'
local cmp = require'cmp'
local lspconfig = require'lspconfig'
local luasnip = require'luasnip'
require'luasnip.loaders.from_vscode'.lazy_load()

-- Completation configuration
vim.o.completeopt = 'menuone,noselect'
vim.g.completion_chain_complete_list = "['exact', 'substring', 'fuzzy']"
vim.o.completeopt = 'menuone,noselect'

-- Global setup
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completation = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- '/' cmd setup
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- ':' cmd setup
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path'}
  }, {
    { name = 'buffer' }
  })
})

local capabilities = cmp_nvim.update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

-- LSP server configuration
-- TODO: capabilities must be added on every ls.
-- make capabilities a function?
lspconfig.pylsp.setup{
  capabilities = capabilities,
  cmd = { "pylsp" },
  filetypes = { "python" }
}
lspconfig.gopls.setup{
  capabilities = capabilities,
  cmd = { "gopls" }
}
lspconfig.tsserver.setup{
  capabilities = capabilities,
  on_attach=on_attach
}
lspconfig.vuels.setup{
  capabilities = capabilities,
  on_attach=on_attach,
  cmd = { "vls" },
    filetypes = { "vue" },
    init_options = {
      config = {
        vetur = {
          completion = {
            autoImport = false,
            tagCasing = "kebab",
            useScaffoldSnippets = false
          },
          format = {
            scriptInitialIndent = false,
            styleInitialIndent = false
          },
          useWorkspaceDependencies = false,
          validation = {
            script = true,
            style = true,
            template = true
          }
        }
      }
    }
}
lspconfig.html.setup {
  capabilities = capabilities,
}
lspconfig.angularls.setup{
  -- capabilities = capabilities,
  -- cmd = { "ngserver", "--stdio", "--tsProbeLocations", "", "--ngProbeLocations", "" },
  -- filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  -- root_dir = root_pattern("angular.json", ".git"),
}

-- Vim lsp
lspconfig.vimls.setup{
  cmd = { 'vim-language-server', '--stdio' }
}

-- Lua lsp
-- https://github.com/tjdevries/nlua.nvim/pull/10
require'nlua.lsp.nvim'.setup(require'lspconfig', {
  cmd = {
    '/usr/bin/lua-language-server',
    '-E',
    '/usr/lib/lua-language-server/main.lua'
  },
  capabilities = capabilities,
})

local opts = {
    -- whether to highlight the currently hovered symbol
   -- disable if your cpu usage is higher than you want it
    -- or you just hate the highlight
    -- default: true
    highlight_hovered_item = true,

    -- whether to show outline guides
    -- default: true
    show_guides = true,
}

require('symbols-outline').setup(opts)
