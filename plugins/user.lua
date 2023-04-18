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
  { "github/copilot.vim", lazy = false },
  { "ryanoasis/vim-devicons" },
  {
    "psf/black",
    opts = { black_linelength = 120 },
  },
}
