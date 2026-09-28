local M = {}

local default_styles = {
  light = "light",
  dark = "dark",
}

local options = {
  styles = {
    light = default_styles.light,
    dark = default_styles.dark,
  },
}

function M.setup(opts)
  if opts == nil then
    opts = {}
  elseif type(opts) ~= "table" then
    error("lettepa: options must be a table", 2)
  end

  for key in pairs(opts) do
    if key ~= "styles" then
      error("lettepa: unknown option " .. tostring(key), 2)
    end
  end

  local supplied_styles = opts.styles
  if supplied_styles == nil then
    supplied_styles = {}
  end
  if type(supplied_styles) ~= "table" then
    error("lettepa: styles must be a table", 2)
  end

  local styles = {
    light = default_styles.light,
    dark = default_styles.dark,
  }

  for background, style in pairs(supplied_styles) do
    if background ~= "light" and background ~= "dark" then
      error("lettepa: style keys must be 'light' or 'dark'", 2)
    end
    if style ~= "light" and style ~= "dark" then
      error("lettepa: style values must be 'light' or 'dark'", 2)
    end
    styles[background] = style
  end

  options = { styles = styles }
end

function M.get_style(background)
  return options.styles[background]
end

return M
