local utils = require "astronvim.utils"
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  { "wakatime/vim-wakatime", lazy = false },
  {
    "zbirenbaum/copilot.lua",
    event = "User Astrofile",
    config = function()
      require("copilot").setup {
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>",
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4,
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-e>",
            accept_word = false,
            accept_line = false,
            next = "<M-l>",
            prev = "<M-h>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = "node", -- Node.js version must be > 16.x
        server_opts_overrides = {},
      }
    end,
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
      },
    },
  },
  { "ryanoasis/vim-devicons" },
  {
    "kylechui/nvim-surround",
    version = "*", -- User for stability; omit to use `main` branch for latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration Here
      }
    end,
  },
  -- { "ggandor/leap.nvim", init = function() require("leap").add_default_mappings() end },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     if opts.ensure_installed ~= "all" then
  --       opts.ensure_installed =
  --         utils.list_insert_unique(opts.ensure_installed, { "bash", "markdown", "markdown_inline", "regex", "vim" })
  --     end
  --   end,
  -- },
}
