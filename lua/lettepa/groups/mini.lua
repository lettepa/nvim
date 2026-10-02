local M = {}

-- mini.indentscope
function M.get_indentscope(p)
  return {
    MiniIndentscopeSymbol = { fg = p.bg0 },
    MiniIndentscopeSymbolOff = { link = "MiniIndentscopeSymbol" },
  }
end

-- mini.statusline
function M.get_statusline(p)
  return {
    MiniStatuslineModeNormal = { fg = p.fg, reverse = true },
    MiniStatuslineModeInsert = { fg = p.green, reverse = true },
    MiniStatuslineModeVisual = { fg = p.blue, reverse = true },
    MiniStatuslineModeReplace = { fg = p.yellow, reverse = true },
    MiniStatuslineModeCommand = { fg = p.magenta, reverse = true },
    MiniStatuslineModeOther = { fg = p.cyan, reverse = true },

    MiniStatuslineDevinfo = { link = "Statusline" },
    MiniStatuslineFilename = { link = "Statusline" },
    MiniStatuslineFileinfo = { link = "Statusline" },

    MiniStatuslineInactive = { link = "StatuslineNC" },
  }
end

-- mini.tabline
function M.get_tabline(p)
  return {
    MiniTablineCurrent = { fg = p.fg, bg = p.bg, bold = true },
    MiniTablineVisible = { fg = p.fg, bg = p.bg },
    MiniTablineHidden = { fg = p.fg, bg = p.bg0 },
    MiniTablineModifiedCurrent = { fg = p.red, bg = p.bg, bold = true },
    MiniTablineModifiedVisible = { fg = p.red, bg = p.bg },
    MiniTablineModifiedHidden = { fg = p.red, bg = p.bg0 },
    MiniTablineFill = { link = "TablineFill" },
    MiniTablineTabpagesection = { fg = p.blue, reverse = true },
    MiniTablineTrunc = { fg = p.fg, bg = p.bg0 },
  }
end

return M

-- vim:et:tw=80:cc=+1:ts=2:sts=2:sw=2:fdl=0:fdm=marker:norl:
