-- Dashboard
lvim.builtin.dashboard.custom_header = {
	"███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
	"████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
	"██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
	"██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
	"██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
	"╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
	"",
	"           ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣴⣦⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
	"           ⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀ ",
	"           ⠀⠀⠀⠀⣠⣾⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣶⡀⠀⠀⠀⠀ ",
	"           ⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⣶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⠀⠀⠀ ",
	"           ⠀⠀⣼⣿⣿⠋⠀⠀⠀⠀⠀⠛⠛⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀⠀ ",
	"           ⠀⢸⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇⠀ ",
	"           ⠀⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀ ",
	"           ⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡟⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⠀ ",
	"           ⠀⣿⣿⣷⠀⠀⠀⠀⠀⠀⣰⣿⣿⠏⠀⠀⢻⣿⣿⡄⠀⠀⠀⠀⠀⠀⣿⣿⡿⠀ ",
	"           ⠀⢸⣿⣿⡆⠀⠀⠀⠀⣴⣿⡿⠃⠀⠀⠀⠈⢿⣿⣷⣤⣤⡆⠀⠀⣰⣿⣿⠇⠀ ",
	"           ⠀⠀⢻⣿⣿⣄⠀⠀⠾⠿⠿⠁⠀⠀⠀⠀⠀⠘⣿⣿⡿⠿⠛⠀⣰⣿⣿⡟⠀⠀ ",
	"           ⠀⠀⠀⠻⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠏⠀⠀⠀ ",
	"           ⠀⠀⠀⠀⠈⠻⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⠟⠁⠀⠀⠀⠀ ",
	"           ⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀ ",
	"           ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
}
lvim.builtin.dashboard.active = true

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.undofile = false
vim.opt.showmode = true
vim.opt_global.shortmess:remove("F")
lvim.lsp.automatic_servers_installation = false

lvim.leader = "space"
lvim.builtin.which_key.mappings["sH"] = { "<cmd>Telescope command_history<cr>", "Command history" }
lvim.builtin.which_key.mappings["b<"] = { ":BufferLineMovePrevious<CR>", "Move previous" }
lvim.builtin.which_key.mappings["b>"] = { ":BufferLineMoveNext<CR>", "Move next" }

-- Diffview & git
lvim.builtin.which_key.mappings["ggp"] = { ":DiffviewOpen<cr>", "Open project diff" }
lvim.builtin.which_key.mappings["ggo"] = { ":DiffviewOpen origin/master<cr>", "Open project diff" }
lvim.builtin.which_key.mappings["ggh"] = { "<cmd>DiffviewFileHistory<cr>", "Open file history" }
lvim.builtin.which_key.mappings["ggc"] = { "<cmd>DiffviewClose<cr>", "Close diff view" }
lvim.builtin.which_key.mappings["ghv"] = { ":!gh repo view --web<cr>", "Github repo view" }
lvim.builtin.which_key.mappings["ghp"] = { ":!gh pr view --web<cr>", "Github PR view" }

-- zettel
lvim.builtin.which_key.mappings["zn"] = { [[<Cmd>lua require"nerveux".new_zettel()<CR>]], "New zettel" }
lvim.builtin.which_key.mappings["zz"] = { [[<Cmd>lua require"nerveux.search".search_zettel {}<CR>]], "Search zettel" }
lvim.builtin.which_key.mappings["zg"] = { [[<Cmd>lua require"nerveux".grep_zettels()<CR>]], "Grep zettel" }
lvim.builtin.which_key.mappings["zl"] = {
	[[<Cmd>lua require"nerveux".insert_last_zettel_id(false)<CR>]],
	"Insert last link",
}

-- asciiart
lvim.builtin.which_key.mappings["aa"] = { ":.!figlet -f 3d<cr>", "Heading 1" }
lvim.builtin.which_key.mappings["as"] = { ":.!toilet -w 200 -f standard<cr>", "Heading 2" }
lvim.builtin.which_key.mappings["ad"] = { ":.!toilet -w 200 -f small<cr>", "Heading 3" }
lvim.builtin.which_key.mappings["ab"] = { ":.!toilet -w 200 -f term -F border<cr>", "Boxify" }

-- dap
-- lvim.builtin.which_key.mappings["d"] = {
--   name = "Debug",
--   t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
--   k = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
--   c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
--   C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
--   d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
--   g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
--   l = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
--   j = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
--   h = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
--   K = { "<cmd>lua require'dap'.up()<cr>", "Up stack" },
--   J = { "<cmd>lua require'dap'.down()<cr>", "Down stack" },
--   p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
--   r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
--   q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
-- }

-- lvim.colorscheme = "nightfox"
lvim.colorscheme = "darkplus"
lvim.builtin.terminal.active = false
lvim.builtin.nvimtree.show_icons.git = 1
lvim.builtin.nvimtree.icons.git = {
	unstaged = "✗",
	staged = "✓",
	unmerged = "",
	renamed = "➜",
	untracked = "★",
	deleted = "",
}
lvim.builtin.bufferline.active = true
lvim.builtin.dap.active = true

require("user.lualine").config()

lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.playground.enable = false
lvim.builtin.treesitter.rainbow.extended_mode = true
lvim.builtin.treesitter.highlight.enabled = true
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
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ exe = "black", filetypes = { "python" } },
	{ exe = "stylua", filetypes = { "lua" } },
	{ exe = "prettier", filetypes = { "markdown", "yaml" } },
})

lvim.lsp.override = { "rust" }
lvim.builtin.which_key.mappings["lh"] = {
	':lua require("rust-tools.inlay_hints").toggle_inlay_hints()<cr>',
	"Inlay hints",
}
-- lvim.builtin.which_key.mappings["lx"] = { ':lua require("rust-tools.runnables").runnables()<cr>', "Runnables" }
-- lvim.builtin.which_key.mappings["lx"] = { ':lua require("rust-tools.debuggables").debuggables()<cr>', "Debuggables" }

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ exe = "flake8" },
})

lvim.plugins = {
	-- themes
	"sainnhe/sonokai",
	"sainnhe/everforest",
	"EdenEast/nightfox.nvim",
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
	-- "tpope/vim-repeat",
	"ChristianChiarulli/nvim-ts-rainbow",
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	"unblevable/quick-scope",
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("user.neoscroll").config()
		end,
	},
	-- {
	-- 	"ggandor/lightspeed.nvim",
	-- 	event = "BufRead",
	-- 	config = function()
	-- 		local mod = require("lightspeed")
	-- 		mod.opts.instant_repeat_fwd_key = ";"
	-- 		mod.opts.instant_repeat_bwd_key = ","
	-- 	end,
	-- },
	"sindrets/diffview.nvim",
	"christoomey/vim-tmux-navigator",
	"oberblastmeister/neuron.nvim",
	-- "renerocksai/telekasten.nvim",
	{ "arinal/nerveux.nvim", branch = "main-arinal" },
	"github/copilot.vim",
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("user.blankline")
		end,
	},
	"mattn/emmet-vim",
	-- "untitled-ai/jupyter_ascending.vim",
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
	-- Language
	"nvim-treesitter/nvim-treesitter-textobjects",
	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	-- "ChristianChiarulli/vim-solidity",
	{
		"scalameta/nvim-metals",
		config = function()
			require("user.scala").config()
		end,
	},
	{
		"simrat39/rust-tools.nvim",
		config = function()
			require("rust-tools").setup({
				tools = {
					autoSetHints = true,
					hover_with_actions = true,
					runnables = {
						use_telescope = true,
					},
					debuggables = {
						use_telescope = true,
					},
				},
				server = {
					cmd = { vim.fn.stdpath("data") .. "/lsp_servers/rust/rust-analyzer" },
					on_attach = require("lvim.lsp").common_on_attach,
					on_init = require("lvim.lsp").common_on_init,
				},
			})
		end,
		ft = { "rust", "rs" },
	},
}

vim.cmd([[
  let g:github_enterprise_urls = ['https://github.bamtech.co']
  imap <silent><script><expr> <C-l> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
]])

require("dapui").setup()
require("nvim-dap-virtual-text").setup()

require("nerveux").setup({
	neuron_cmd = "neuron",
	neuron_dir = "/home/arinal/neuron",
	use_cache = false,
	start_daemon = true,
	kill_daemon_at_exit = true,
	virtual_titles = true,
	create_default_mappings = true,
	virtual_title_hl = "Special",
	virtual_title_hl_folge = "Repeat",
	mappings = {
		search_zettels = "gzz",
		backlinks_search = "gzb",
		uplinks_search = "gzu",
		new = "gzn",
		search_content = "gzs",
		insert_link = "gzl",
		insert_link_folge = "gzL",
		follow = "<CR>",
		help = "gz?",
	},
})

-- require'nvim-treesitter.configs'.setup {
--   textobjects = {
--     select = {
--       enable = true,

--       -- Automatically jump forward to textobj, similar to targets.vim
--       lookahead = true,

--       keymaps = {
--         -- You can use the capture groups defined in textobjects.scm
--         ["af"] = "@function.outer",
--         ["if"] = "@function.inner",
--         ["ac"] = "@class.outer",
--         ["ic"] = "@class.inner",

--         -- Or you can define your own textobjects like this
--         ["iF"] = {
--           python = "(function_definition) @function",
--           cpp = "(function_definition) @function",
--           c = "(function_definition) @function",
--           java = "(method_declaration) @function",
--         },
--       },
--     },
--   },
-- }
