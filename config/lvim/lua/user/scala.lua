local M = {}

M.config = function()
  local metals_config = require("metals").bare_config()
  local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
      options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
  map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  map("n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  metals_config.on_attach = function()
    require("lsp").common_on_attach()
  end
  metals_config.settings = {
    superMethodLensesEnabled = true,
    showImplicitArguments = true,
    showInferredType = true,
    showImplicitConversionsAndClasses = true,
    excludedPackages = {},
  }
  metals_config.init_options.statusBarProvider = "on"
  vim.cmd([[autocmd FileType scala,sbt,sc lua require("metals").initialize_or_attach { metals_config }]])
end

return M

