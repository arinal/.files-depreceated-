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
lvim.colorscheme = "onedarkest"
-- lvim.colorscheme = "lunar"
vim.opt.relativenumber = true

lvim.log.level = "warn"
lvim.format_on_save = false
lvim.leader = "space"

lvim.builtin.lualine.style = "lvim"
-- lvim.builtin.lualine.options.theme = "lunar"

-- keymapping
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["b<"] = { ":BufferLineMovePrev<CR>", "Move previous" }
lvim.builtin.which_key.mappings["b>"] = { ":BufferLineMoveNext<CR>", "Move next" }
vim.api.nvim_set_keymap("n", "<tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<S-tab>", ":BufferLineCyclePrev<CR>", { silent = true })

lvim.builtin.which_key.mappings['ss'] = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" }
lvim.builtin.which_key.mappings['sS'] = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols" }
-- lvim.builtin.which_key.mappings["sH"] = { "<cmd>Telescope command_history<cr>", "Command history" }
-- lvim.transparent_window = true

-- Diffview & git
lvim.builtin.which_key.mappings["gD"] = { ":DiffviewOpen origin/master<cr>", "Open project diff" }
lvim.builtin.which_key.mappings["gh"] = { "<cmd>DiffviewFileHistory %<cr>", "Open file history" }
lvim.builtin.which_key.mappings["gC"] = { "<cmd>DiffviewClose<cr>", "Close diff view" }

lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  d = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
  b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
  c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
  C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
  D = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
  g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
  l = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
  j = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
  h = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
  p = { "<cmd>lua require'dap'.pause()<cr>", "Pause" },
  R = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
  r = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
  q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
  K = { "<cmd>lua require'dap'.up()<cr>", "Up stack frame" },
  J = { "<cmd>lua require'dap'.down()<cr>", "Down stack frame" },
  U = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
}

-- zettel
lvim.builtin.which_key.mappings['z'] = {
  name = "+Zettel",
  z = { [[<cmd>ObsidianSearch<cr>]], "Search obsidian" },
  t = { [[<cmd>ObsidianToday<cr>]], "Create/goto today's note" },
  o = { [[<cmd>ObsidianOpen<cr>]], "Open in obsidian app" },
}

-- asciiart
lvim.builtin.which_key.mappings["a"] = {
  name = "+AsciiArt",
  -- a = { ":.!figlet -f 3d<cr>", "Heading 1" },
  a = { ":.!figlet<cr>", "Heading 1" },
  s = { ":.!toilet -w 200 -f standard<cr>", "Heading 2" },
  d = { ":.!toilet -w 200 -f small<cr>", "Heading 3" },
  b = { ":.!toilet -w 200 -f term -F border<cr>", "Boxify" },
}

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = false
lvim.builtin.dap.active = true
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.nvimtree.setup.disable_netrw = false
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.renderer.group_empty = true
lvim.builtin.nvimtree.setup.git.ignore = false
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
  "markdown",
}

-- copilot cmp
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })

lvim.plugins = {
  "sainnhe/sonokai",
  "sainnhe/everforest",
  "EdenEast/nightfox.nvim",
  "lunarvim/colorschemes",
  "Shatur/neovim-ayu",
  "FrenzyExists/aquarium-vim",
  "Mangeshrex/uwu.vim",
  "norcalli/nvim-base16.lua",

  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  "sindrets/diffview.nvim",
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
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup()
    end,
  },
  "lambdalisue/suda.vim",
  -- {
  --   "karb94/neoscroll.nvim",
  --   config = function()
  --     require("user.neoscroll").config()
  --   end,
  -- },
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
  -- {
  --   "ellisonleaoiiiaa/glow.nvim",
  --   cmd = "Glow",
  --   ft = { "markdown" }
  -- },
  { "ellisonleao/glow.nvim", config = function() require("glow").setup() end },
  "christoomey/vim-tmux-navigator",
  -- "github/copilot.vim",
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   config = function()
  --     require("chatgpt").setup()
  --   end,
  --   requires = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }
  -- },
  {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
        }
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
    config = function()
      require("copilot_cmp").setup()
      lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
    end
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local status_ok, rust_tools = pcall(require, "rust-tools")
      if not status_ok then
        return
      end

      local opts = {
        tools = {
          executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
          reload_workspace_from_cargo_toml = true,
          inlay_hints = {
            auto = true,
            only_current_line = false,
            show_parameter_hints = true,
            parameter_hints_prefix = "<-",
            other_hints_prefix = "=>",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment",
          },
          hover_actions = {
            border = {
              { "╭", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╮", "FloatBorder" },
              { "│", "FloatBorder" },
              { "╯", "FloatBorder" },
              { "─", "FloatBorder" },
              { "╰", "FloatBorder" },
              { "│", "FloatBorder" },
            },
            auto_focus = true,
          },
        },
        server = {
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy"
              }
            }
          },
        },
      }
      local path = vim.fn.expand "~/" .. ".vscode-oss/extensions/vadimcn.vscode-lldb-1.7.4"
      local codelldb = path .. "adapter/codelldb"
      local liblldb = path .. "lldb/lib/liblldb.so"

      opts.dap = {
        adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb, liblldb),
      }
      rust_tools.setup(opts)
    end,
    ft = { "rust", "rs" },
  },
  {
    "scalameta/nvim-metals",
    config = function()
      require("user.scala").config()
    end,
  },
  {
    "epwalsh/obsidian.nvim",
    config = function()
      require("obsidian").setup({
        dir = "~/neuron",
        completion = {
          nvim_cmp = true
        },
        daily_notes = {
          folder = "Daily",
        }
      })
    end,
  }
}

vim.cmd([[
  let g:github_enterprise_urls = ['https://github.bamtech.co']
]])

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  { name = "prettier" },
}

-- DAP
local dap = require('dap')
-- DAP Python
dap.adapters.python = {
  type = 'executable',
  command = '/home/arinal/.local/share/nvim/mason/packages/debugpy/venv/bin/python',
  args = { '-m', 'debugpy.adapter' },
}
dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = "Launch file",
    program = "${file}",
    pythonPath = function()
      return '/usr/bin/python'
    end,
  },
}
-- DAP C/C++ and Rust
-- dap.adapters.codelldb = {
--   type = 'server',
--   port = "${port}",
--   executable = {
--     -- command = '/home/arinal/.local/share/nvim/mason/packages/codelldb/codelldb',
--     command = '/home/arinal/.vscode-oss/extensions/vadimcn.vscode-lldb-1.7.4/adapter/codelldb',
--     args = { "--port", "${port}" },
--   }
-- }
-- dap.configurations.cpp = {
--   {
--     name = "Launch file",
--     type = "codelldb",
--     request = "launch",
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     stdio = '/home/arinal/damn',
--     cwd = '${workspaceFolder}',
--     stopOnEntry = true,
--   },
-- }
-- dap.configurations.c = dap.configurations.cpp
-- dap.configurations.rust = dap.configurations.cpp
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
vim.cmd([[au BufRead,BufNewFile *.smithy setfiletype smithy]])

-- local lvim_lsp = require("lvim.lsp")
-- require("lspconfig").smithy_ls.setup {
--   on_attach = lvim_lsp.common_on_attach,
--   on_init = lvim_lsp.common_on_init,
--   on_exit = lvim_lsp.common_on_exit,
--   capabilities = lvim_lsp.common_capabilities(),
-- }

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
