-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<M-k>"] = { function() require("smart-splits").resize_up(3) end, desc = "Resize split up" },
    ["<M-j>"] = { function() require("smart-splits").resize_down(3) end, desc = "Resize split down" },
    ["<M-h>"] = { function() require("smart-splits").resize_left(3) end, desc = "Resize split left" },
    ["<M-l>"] = { function() require("smart-splits").resize_right(3) end, desc = "Resize split right" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
