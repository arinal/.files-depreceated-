lvim.builtin.alpha.dashboard.section.header.val = {
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  "████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  "██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  "██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  "██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  "╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  "",
  "           ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣴⣦⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "           ⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀",
  "           ⠀⠀⠀⠀⣠⣾⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣶⡀⠀⠀⠀",
  "           ⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⣶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⠀⠀",
  "           ⠀⠀⣼⣿⣿⠋⠀⠀⠀⠀⠀⠛⠛⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀",
  "           ⠀⢸⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇",
  "           ⠀⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿",
  "           ⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡟⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿",
  "           ⠀⣿⣿⣷⠀⠀⠀⠀⠀⠀⣰⣿⣿⠏⠀⠀⢻⣿⣿⡄⠀⠀⠀⠀⠀⠀⣿⣿⡿",
  "           ⠀⢸⣿⣿⡆⠀⠀⠀⠀⣴⣿⡿⠃⠀⠀⠀⠈⢿⣿⣷⣤⣤⡆⠀⠀⣰⣿⣿⠇",
  "           ⠀⠀⢻⣿⣿⣄⠀⠀⠾⠿⠿⠁⠀⠀⠀⠀⠀⠘⣿⣿⡿⠿⠛⠀⣰⣿⣿⡟⠀",
  "           ⠀⠀⠀⠻⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠏⠀⠀",
  "           ⠀⠀⠀⠀⠈⠻⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⠟⠁⠀⠀⠀",
  "           ⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀",
  "           ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "",
  "",
  "",
  "",
}

-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "carbonfox"
vim.opt.relativenumber = true
lvim.leader = "space"

-- keymapping
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["sH"] = { "<cmd>Telescope command_history<cr>", "Command history" }
lvim.builtin.which_key.mappings["b<"] = { ":BufferLineMovePrev<CR>", "Move previous" }
lvim.builtin.which_key.mappings["b>"] = { ":BufferLineMoveNext<CR>", "Move next" }

-- zettel
lvim.builtin.which_key.mappings['z'] = {
  name = "+Zettel",
  n = { [[<Cmd>lua require"nerveux".new_zettel()<CR>]], "New zettel" },
  z = { [[<Cmd>lua require"nerveux.search".search_zettel {}<CR>]], "Search zettel" },
  g = { [[<Cmd>lua require"nerveux".grep_zettels()<CR>]], "Grep zettel" },
  l = { [[<Cmd>lua require"nerveux".insert_last_zettel_id(false)<CR>]], "Insert last link", }
}

-- asciiart
lvim.builtin.which_key.mappings["a"] = {
  name = "+AsciiArt",
  a = { ":.!figlet -f 3d<cr>", "Heading 1" },
  s = { ":.!toilet -w 200 -f standard<cr>", "Heading 2" },
  d = { ":.!toilet -w 200 -f small<cr>", "Heading 3" },
  b = { ":.!toilet -w 200 -f term -F border<cr>", "Boxify" },
}

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true

lvim.builtin.nvimtree.setup.disable_netrw = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.renderer.group_empty = true
lvim.builtin.nvimtree.setup.renderer.icons.glyphs.git = {
  unstaged = "✗",
  staged = "✓",
  unmerged = "",
  renamed = "➜",
  untracked = "★",
  deleted = "",
}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "scala",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.highlight.enabled = true

-- copilot cmp
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

lvim.plugins = {
  "sainnhe/sonokai",
  "sainnhe/everforest",
  "EdenEast/nightfox.nvim",
  "lunarvim/colorschemes",
  { "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } },
  "Shatur/neovim-ayu",
  "FrenzyExists/aquarium-vim",
  "Mangeshrex/uwu.vim",

  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  "tpope/vim-surround",
  "unblevable/quick-scope",
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("user.neoscroll").config()
    end,
  },
  {
    'gen740/SmoothCursor.nvim',
    config = function()
      require("user.smoothcursor").config()
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    config = function()
      require("nvim-dap-virtual-text").setup()
    end
  },
  "christoomey/vim-tmux-navigator",
  -- "github/copilot.vim",
  { "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  { "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
    config = function()
      require("copilot_cmp").setup()
    end
  },
  { "arinal/nerveux.nvim", branch = "main-arinal" },
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

-- nerveux
require("nerveux").setup({
  neuron_cmd = "neuron",
  neuron_dir = "/home/arinal/neuron",
  use_cache = false,
  start_daemon = true,
  kill_daemon_at_exit = true,
  virtual_titles = false,
  create_default_mappings = true,
  virtual_title_hl = "Special",
  virtual_title_hl_folge = "Repeat",
})

-- DAP
local dap = require('dap')
-- DAP Python
dap.adapters.python = {
  type = 'executable';
  command = '/home/arinal/.local/share/nvim/mason/packages/debugpy/venv/bin/python';
  args = { '-m', 'debugpy.adapter' };
}
dap.configurations.python = {
  {
    type = 'python';
    request = 'launch';
    name = "Launch file";
    program = "${file}";
    pythonPath = function()
      return '/usr/bin/python'
    end;
  },
}
-- DAP C/C++ and Rust
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- command = '/home/arinal/.local/share/nvim/mason/packages/codelldb/codelldb',
    command = '/home/arinal/.vscode-oss/extensions/vadimcn.vscode-lldb-1.7.4/adapter/codelldb',
    args = { "--port", "${port}" },
  }
}
dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    stdio = '/home/arinal/damn';
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
-- DAP Scala
dap.configurations.scala = {
  {
    type = "scala",
    request = "launch",
    name = "Run or Test Target",
    metals = {
      runType = "runOrTestFile",
    },
  },
  {
    type = "scala",
    request = "launch",
    name = "Test Target",
    metals = {
      runType = "testTarget",
    },
  },
}

-- smithy
-- vim.cmd([[au BufRead,BufNewFile *.smithy setfiletype smithy]])

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.smithy = {
--   install_info = {
--     url = "https://github.com/indoorvivants/tree-sitter-smithy",
--     files = { "src/parser.c" },
--     branch = "main",
--     generate_requires_npm = true,
--     requires_generate_from_grammar = true,
--   },
--   filetype = "smithy"
-- }

-- Diffview & git
-- lvim.builtin.which_key.mappings["ggp"] = { ":DiffviewOpen<cr>", "Open project diff" }
-- lvim.builtin.which_key.mappings["ggo"] = { ":DiffviewOpen origin/master<cr>", "Open project diff" }
-- lvim.builtin.which_key.mappings["ggh"] = { "<cmd>DiffviewFileHistory<cr>", "Open file history" }
-- lvim.builtin.which_key.mappings["ggc"] = { "<cmd>DiffviewClose<cr>", "Close diff view" }
-- lvim.builtin.which_key.mappings["ghv"] = { ":!gh repo view --web<cr>", "Github repo view" }
-- lvim.builtin.which_key.mappings["ghp"] = { ":!gh pr view --web<cr>", "Github PR view" }
