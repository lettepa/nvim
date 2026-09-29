local M = {}

local config = require("lettepa.config")
local colors = require("lettepa.colors")
local mini_groups = require("lettepa.groups.mini")
local group_sources = {
  { name = "builtin", get = require("lettepa.groups.builtin").get },
  { name = "mini", module = "statusline", get = mini_groups.get_statusline },
  { name = "mini", module = "tabline", get = mini_groups.get_tabline },
}

local augroup_name = "LettepaColorscheme"
local active_style

local cterm_color_keys = {
  fg = "ctermfg",
  bg = "ctermbg",
}

local function to_highlight_spec(attributes)
  local spec = {}

  for key, value in pairs(attributes) do
    local cterm_key = cterm_color_keys[key]
    if cterm_key and type(value) == "table" then
      spec[key] = value.gui
      spec[cterm_key] = value.cterm
    else
      spec[key] = value
    end
  end

  return spec
end

local function get_style()
  local background = vim.o.background
  local style = config.get_style(background)
  if not style then
    error(
      "lettepa: no style configured for background '" .. background .. "'",
      2
    )
  end
  return style
end

function M.apply(clear)
  if clear then
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
    end
  end

  local style = get_style()
  local palette = colors.palette[style]
  -- Builtins come first so optional integrations may override shared groups.
  for _, source in ipairs(group_sources) do
    if config.is_group_enabled(source.name, source.module) then
      for name, attributes in pairs(source.get(palette)) do
        vim.api.nvim_set_hl(0, name, to_highlight_spec(attributes))
      end
    end
  end

  vim.g.colors_name = "lettepa"
  active_style = style
end

local function install_background_autocmd()
  local group = vim.api.nvim_create_augroup(augroup_name, { clear = true })
  vim.api.nvim_create_autocmd("OptionSet", {
    group = group,
    pattern = "background",
    callback = function()
      if vim.g.colors_name ~= "lettepa" then
        return
      end

      local style = get_style()
      if style ~= active_style then
        M.apply(false)
      end
    end,
  })
end

function M.setup()
  M.apply(true)
  install_background_autocmd()
end

return M
