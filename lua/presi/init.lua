require("presi.lsp")

P = function(v)
  print(vim.inspect(v))
  return v
end

--require('onedark').setup()

--require('go').setup({
  --goimport = 'golsp',
  --gofmt = 'golsp',
--})

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end
