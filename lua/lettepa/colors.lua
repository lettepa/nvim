local M = {}

M.palette = {
  full = {
    anlan = { gui = "#101f30", cterm = 234 },
    qinghui = { gui = "#2b333e", cterm = 236 },
    waguanhui = { gui = "#47484c", cterm = 239 },
    yuweihui = { gui = "#5e616d", cterm = 241 },
    xinghui = { gui = "#b2bbbe", cterm = 250 },
    dalishihui = { gui = "#c4cbcf", cterm = 252 },
    zhenzhuhui = { gui = "#e4dfd7", cterm = 254 },
    hanbaiyu = { gui = "#f8f4ed", cterm = 231 },
    haitanghong = { gui = "#f03752", cterm = 167 },
    fengyehong = { gui = "#c21f30", cterm = 160 },
    shilv = { gui = "#57c3c2", cterm = 42 },
    meidielv = { gui = "#12aa9c", cterm = 36 },
    jianshilan = { gui = "#66a9c9", cterm = 39 },
    dianqing = { gui = "#1661ab", cterm = 25 },
    pubulan = { gui = "#51c4d3", cterm = 75 },
    cuilan = { gui = "#1e9eb3", cterm = 32 },
    fengxianhuahong = { gui = "#ea7293", cterm = 211 },
    zijinghong = { gui = "#ee2c79", cterm = 198 },
    mihuang = { gui = "#fbb957", cterm = 215 },
    canghuang = { gui = "#806332", cterm = 94 },
    none = { gui = "NONE", cterm = "NONE" },
  },
}

M.palette.dark = {
  -- Main colors
  bg = M.palette.full.anlan,
  bg0 = M.palette.full.qinghui,
  fg0 = M.palette.full.dalishihui,
  fg = M.palette.full.zhenzhuhui,
  -- Primary accent colors
  red = M.palette.full.haitanghong,
  green = M.palette.full.shilv,
  blue = M.palette.full.jianshilan,
  cyan = M.palette.full.pubulan,
  magenta = M.palette.full.fengxianhuahong,
  yellow = M.palette.full.mihuang,
  -- Secondary accent colors
  red0 = M.palette.full.fengyehong,
  green0 = M.palette.full.meidielv,
  blue0 = M.palette.full.dianqing,
  cyan0 = M.palette.full.cuilan,
  magenta0 = M.palette.full.zijinghong,
  yellow0 = M.palette.full.canghuang,
  -- NONE
  none = M.palette.full.none,
}

M.palette.light = {
  -- Main colors
  bg = M.palette.full.hanbaiyu,
  bg0 = M.palette.full.zhenzhuhui,
  fg0 = M.palette.full.waguanhui,
  fg = M.palette.full.qinghui,
  -- Primary accent colors
  red = M.palette.full.fengyehong,
  green = M.palette.full.meidielv,
  blue = M.palette.full.dianqing,
  cyan = M.palette.full.cuilan,
  magenta = M.palette.full.zijinghong,
  yellow = M.palette.full.canghuang,
  -- Secondary accent colors
  red0 = M.palette.full.haitanghong,
  green0 = M.palette.full.shilv,
  blue0 = M.palette.full.jianshilan,
  cyan0 = M.palette.full.pubulan,
  magenta0 = M.palette.full.fengxianhuahong,
  yellow0 = M.palette.full.mihuang,
  -- NONE
  none = M.palette.full.none,
}

return M
