local M = {}

local config = require("lettepa.config")
local colorscheme = require("lettepa.colorscheme")

function M.setup(opts)
  config.setup(opts)

  -- Configure without taking over another theme, but reapply changes if
  -- Lettepa is already active.
  if vim.g.colors_name == "lettepa" then
    colorscheme.apply(false)
  end
end

return M
