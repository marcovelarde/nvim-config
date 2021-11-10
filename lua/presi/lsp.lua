-- sumneko_root_path conf
-- sumneko_binary conf

local function on_attach()
    -- TODO: Implement Telescopic stuff
end

-- Completation configuration
local cmp_nvim = require'cmp_nvim_lsp'
local cmp = require'cmp'
local luasnip = require'luasnip'

local capabilities = cmp_nvim.update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)
vim.o.completeopt = 'menuone,noselect'

require'cmp'.setup{
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' }
  }
}
-- End completation configuration

-- TODO: capabilities must be added on every ls.
-- make capabilities a function?
require'lspconfig'.pylsp.setup{
  capabilities = capabilities,
  cmd = { "pylsp" },
  filetypes = { "python" }
}
require'lspconfig'.gopls.setup{
  capabilities = capabilities,
  cmd = { "gopls" }
}
require'lspconfig'.tsserver.setup{
  capabilities = capabilities,
  on_attach=on_attach
}
require'lspconfig'.vuels.setup{
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

-- Vim lsp
require'lspconfig'.vimls.setup{
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
