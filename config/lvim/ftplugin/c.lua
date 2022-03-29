vim.cmd("setlocal tabstop=4 shiftwidth=4")

local dap_install = require("dap-install")
dap_install.config("codelldb", {})
-- dap_install.config("ccppr_vsc", {})
