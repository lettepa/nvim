local M = {}

local default_options = {
  styles = {
    light = "light",
    dark = "dark",
  },
  groups = {
    builtin = true,
    mini = {
      statusline = true,
      tabline = true,
    },
  },
}

local options = vim.deepcopy(default_options)

function M.setup(opts)
  if opts == nil then
    opts = {}
  elseif type(opts) ~= "table" then
    error("lettepa: options must be a table", 2)
  end

  for key in pairs(opts) do
    if key ~= "styles" and key ~= "groups" then
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

  -- Validate into a fresh copy so a bad option cannot change active settings.
  local next_options = vim.deepcopy(default_options)

  for background, style in pairs(supplied_styles) do
    if background ~= "light" and background ~= "dark" then
      error("lettepa: style keys must be 'light' or 'dark'", 2)
    end
    if style ~= "light" and style ~= "dark" then
      error("lettepa: style values must be 'light' or 'dark'", 2)
    end
    next_options.styles[background] = style
  end

  local supplied_groups = opts.groups
  if supplied_groups == nil then
    supplied_groups = {}
  end
  if type(supplied_groups) ~= "table" then
    error("lettepa: groups must be a table", 2)
  end

  for name, enabled in pairs(supplied_groups) do
    if default_options.groups[name] == nil then
      error("lettepa: group keys must be 'builtin' or 'mini'", 2)
    end

    if name == "mini" then
      if type(enabled) == "boolean" then
        for module in pairs(next_options.groups.mini) do
          next_options.groups.mini[module] = enabled
        end
      elseif type(enabled) == "table" then
        for module, selected in pairs(enabled) do
          if default_options.groups.mini[module] == nil then
            error(
              "lettepa: mini group keys must be 'statusline' or 'tabline'",
              2
            )
          end
          if type(selected) ~= "boolean" then
            error("lettepa: mini group values must be booleans", 2)
          end
          next_options.groups.mini[module] = selected
        end
      else
        error("lettepa: mini must be a boolean or table", 2)
      end
    else
      if type(enabled) ~= "boolean" then
        error("lettepa: group values must be booleans", 2)
      end
      next_options.groups[name] = enabled
    end
  end

  options = next_options
end

function M.get_style(background)
  return options.styles[background]
end

function M.is_group_enabled(name, module)
  local selection = options.groups[name]
  if type(selection) ~= "table" then
    return selection == true
  end

  if module then
    return selection[module] == true
  end

  -- The whole integration is enabled if at least one module is selected.
  for _, enabled in pairs(selection) do
    if enabled then
      return true
    end
  end
  return false
end

return M
