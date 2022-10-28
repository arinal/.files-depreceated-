local M = {}

M.config = function()
  local config = require("metals").bare_config()
  config.on_attach = require("lvim.lsp").common_on_attach
  config.settings = {
    superMethodLensesEnabled = true,
    showImplicitArguments = true,
    showInferredType = true,
    showImplicitConversionsAndClasses = true,
    excludedPackages = {},
  }
  vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.scala", "*.sbt", "*.sc" },
    callback = function() require("metals").initialize_or_attach(config) end,
  })
  require("metals").setup_dap()
end

return M
