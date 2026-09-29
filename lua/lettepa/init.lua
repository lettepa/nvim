local M = {}

local config = require("lettepa.config")
local colorscheme = require("lettepa.colorscheme")

function M.setup(opts)
  config.setup(opts)

  -- Configuration must not take over another theme. When active, start fresh
  -- so disabling a group family removes highlights it previously defined.
  if vim.g.colors_name == "lettepa" then
    colorscheme.apply(true)
  end
end

return M
