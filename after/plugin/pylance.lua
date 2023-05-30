local lspconfig = require('lspconfig')
local pylance = require('pylance')

pylance.setup()
lspconfig.pylance.setup({
  -- https://github.com/microsoft/pylance-release#settings-and-customization
  settings = {
    python = {
      analysis = {
        indexing = true,
        typeCheckingMode = 'basic',
      }
    }
  }
})
