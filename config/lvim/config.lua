-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "onedarker"
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.undofile = false
vim.opt.showmode = false
vim.opt_global.shortmess:remove("F")

lvim.leader = "space"
lvim.builtin.which_key.mappings["sH"] = { "<cmd>Telescope command_history<cr>", "Command history" }

lvim.builtin.dashboard.active = false
lvim.builtin.terminal.active = false
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.bufferline.active = true
lvim.builtin.dap.active = true

-- lvim.builtin.lualine.options.theme = "horizontal"
require("user.lualine").config()

lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.playground.enable = false
lvim.builtin.treesitter.rainbow.extended_mode = false
lvim.builtin.treesitter.highlight.enabled = false
lvim.builtin.treesitter.rainbow = {
	enable = true,
	colors = {
		"Gold",
		"Orchid",
		"DodgerBlue",
	},
	-- disable = { "html" },
}

-- LSP
lvim.lang.emmet.active = true
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ exe = "black", filetypes = { "python" } },
	{ exe = "stylua", filetypes = { "lua" } },
	{ exe = "prettier", filetypes = { "markdown" } },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ exe = "flake8" },
})

lvim.plugins = {
	-- themes
	"lunarvim/colorschemes",
	"folke/tokyonight.nvim",
	{ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } },
	"CantoroMC/ayu-nvim",
	"FrenzyExists/aquarium-vim",
	"Mangeshrex/uwu.vim",

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
	"ChristianChiarulli/nvim-ts-rainbow",
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	"unblevable/quick-scope",
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("user.neoscroll").config()
		end,
	},
	{ "ggandor/lightspeed.nvim", event = "BufRead" },
	{
		"sindrets/diffview.nvim",
		event = "BufRead",
	},
	"christoomey/vim-tmux-navigator",
	"oberblastmeister/neuron.nvim",

	-- "github/copilot.vim",
	{
		"lukas-reineke/indent-blankline.nvim",
		-- event = "BufReadPre",
		config = function()
			require("user.blankline")
		end,
	},
	-- {
	--   "tzachar/cmp-tabnine",
	--   config = function()
	--     local tabnine = require "cmp_tabnine.config"
	--     tabnine:setup {
	--       max_lines = 1000,
	--       max_num_results = 20,
	--       sort = true,
	--     }
	--   end,
	--   run = "./install.sh",
	--   requires = "hrsh7th/nvim-cmp",
	-- },
	"untitled-ai/jupyter_ascending.vim",
	-- { "folke/trouble.nvim", cmd = "TroubleToggle" },
	{
		"ray-x/lsp_signature.nvim",
		event = "InsertEnter",
		config = function()
			require("lsp_signature").setup()
		end,
	},
	"rcarriga/nvim-dap-ui",
	"theHamsta/nvim-dap-virtual-text",
	-- LSP clients
	{
		"scalameta/nvim-metals",
		config = function()
			require("user.scala").config()
		end,
	},
}

vim.cmd([[
  let g:github_enterprise_urls = ['https://github.bamtech.co']
]])

require("neuron").setup({
	virtual_titles = true,
	mappings = true,
	run = nil,
	neuron_dir = "~/neuron",
	leader = "gz",
})

-- local dap_install = require("dap-install")
-- local dbg_list = require("dap-install.api.debuggers").get_installed_debuggers()
-- for _, debugger in ipairs(dbg_list) do
-- 	dap_install.config(debugger)
-- end

-- require("dapui").setup()
-- require("nvim-dap-virtual-text").setup()
