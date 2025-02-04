return {
  "b0o/schemastore.nvim",
  config = function()
    require('lspconfig').yamlls.setup {
      settings = {
        yaml = {
          customTags={"!Equals sequence", "!FindInMap sequence", "!GetAtt scalar", "!GetAZs scalar", "!ImportValue scalar", "!Join sequence scalar", "!Ref scalar", "!Select sequence", "!Split sequence", "!Sub scalar", "!And sequence", "!Not sequence", "!Equals sequence", "!Sub sequence", "!ImportValue scalar", "!If sequence"},
          schemaStore = {
            -- You must disable built-in schemaStore support if you want to use
            -- this plugin and its advanced options like `ignore`.
            enable = false,
            -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
            url = "",
          },
          schemas = require('schemastore').yaml.schemas(),
        },
      },
    }
  end,
}
