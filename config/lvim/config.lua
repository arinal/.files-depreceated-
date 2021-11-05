-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "onedarker"
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.undofile = false
vim.opt.showmode = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.builtin.which_key.mappings["sH"] = { "<cmd>Telescope command_history<cr>", "Command history" }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = false
lvim.builtin.terminal.active = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.dap.active = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "go",
  -- "scala",
  "java",
  "yaml",
  "nix"
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- LSP
lvim.lang.python.formatters = { { exe = "black", } }

lvim.plugins = {
  -- themes
  "folke/tokyonight.nvim",
  {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}},
  "CantoroMC/ayu-nvim",
  "FrenzyExists/aquarium-vim",
  "Mangeshrex/uwu.vim",

  -- "windwp/nvim-autopairs",
  {
    "norcalli/nvim-colorizer.lua",
      config = function()
        require("colorizer").setup({ "*" }, {
            RGB = true,
            RRGGBB = true,
            RRGGBBAA = true,
            rgb_fn = true,
            hsl_fn = true,
            css = true,
            css_fn = true,
            })
    end,
  },
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  "tpope/vim-repeat",
  { "tpope/vim-surround", keys = {"c", "d", "y"} },
  { "ggandor/lightspeed.nvim", event = "BufRead" },
  "github/copilot.vim",
  "lukas-reineke/indent-blankline.nvim",
  -- {'tzachar/compe-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-compe'},
  -- {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'},
	"oberblastmeister/neuron.nvim",
  "christoomey/vim-tmux-navigator",
  "untitled-ai/jupyter_ascending.vim",
  { "folke/trouble.nvim", cmd = "TroubleToggle" },
  { "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
      require "lsp_signature".setup()
    end
  },
  "rcarriga/nvim-dap-ui",
  "theHamsta/nvim-dap-virtual-text",
  -- LSP clients
  -- {'scalameta/nvim-metals'}, requires = { "metals" },
  {
    "scalameta/nvim-metals",
    config = function()
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
      map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
      map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
-- map("n", "<leader>ln", "<cmd>lua vim.lsp.buf.rename()<CR>")
-- map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
-- map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
-- map("n", "<leader>ws", '<cmd>lua require"metals".worksheet_hover()<CR>')
-- map("n", "<leader>a", '<cmd>lua require"metals".open_all_diagnostics()<CR>')
-- map("n", "<leader>d", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>") -- buffer diagnostics only
-- map("n", "[c", "<cmd>lua vim.lsp.diagnostic.goto_prev { wrap = false }<CR>")
-- map("n", "]c", "<cmd>lua vim.lsp.diagnostic.goto_next { wrap = false }<CR>")
      metals_config.on_attach = function()
        require("lvim.lsp").common_on_attach()
      end
      metals_config.settings = {
        showImplicitArguments = false,
        showInferredType = true,
        excludedPackages = {},
      }
      metals_config.init_options.statusBarProvider = "on"
      -- require("metals").initialize_or_attach { metals_config }
      vim.cmd([[autocmd FileType scala,sbt lua require("metals").initialize_or_attach { metals_config }]])
    end,
  },
}
-- local metals_config = require("metals").bare_config()
-- metals_config.settings = {
--   showImplicitArguments = true,
--   excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
-- }
-- metals_config.on_attach = function()
--   require("lvim.lsp").common_on_attach()
-- end
-- vim.cmd([[autocmd FileType scala setlocal omnifunc=v:lua.vim.lsp.omnifunc]])

vim.cmd [[
  let g:github_enterprise_urls = ['https://github.bamtech.co']
]]

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
}

require'neuron'.setup {
    virtual_titles = true,
    mappings = true,
    run = nil,
    neuron_dir = "~/neuron",
    leader = "gz",
}

local dap_install = require("dap-install")
local dbg_list = require("dap-install.api.debuggers").get_installed_debuggers()
for _, debugger in ipairs(dbg_list) do
	dap_install.config(debugger)
end

require("dapui").setup()
require("nvim-dap-virtual-text").setup()
