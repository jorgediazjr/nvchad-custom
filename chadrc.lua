---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest",
  theme_toggle = { "everforest", "blossom_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

-- M.ui = {
--   theme = "palenight"
-- }

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
