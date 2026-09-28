local M = {}

function M.get(p)
  return {
    -- highlight-groups {{{

    ColorColumn = { bg = p.bg0 },
    Conceal = { fg = p.fg0 },
    CurSearch = { reverse = true, bold = true },
    Cursor = { fg = p.bg, bg = p.fg },
    lCursor = { fg = p.bg, bg = p.fg },
    CursorIM = { fg = p.bg, bg = p.fg },
    CursorColumn = { bg = p.bg0 },
    CursorLine = { bg = p.bg0 },
    Directory = { fg = p.blue },
    DiffAdd = { fg = p.green, bg = p.bg0 },
    DiffChange = { fg = p.yellow, bg = p.bg0 },
    DiffDelete = { fg = p.red, bg = p.bg0 },
    DiffText = { fg = p.blue, bg = p.bg0, bold = true },
    DiffTextAdd = { fg = p.green, bg = p.bg0, bold = true },
    EndOfBuffer = { fg = p.fg0 },
    TermCursor = { link = "Cursor" },
    OkMsg = { fg = p.green, bold = true },
    WarningMsg = { fg = p.yellow, bold = true },
    ErrorMsg = { fg = p.red, bold = true },
    StderrMsg = { fg = p.red },
    StdoutMsg = { fg = p.fg },
    WinSeparator = { fg = p.fg0 },
    Folded = { fg = p.blue, bg = p.bg0 },
    FoldColumn = { fg = p.fg0 },
    SignColumn = { fg = p.magenta },
    IncSearch = { reverse = true, bold = true },
    Substitute = { fg = p.magenta, bg = p.bg0 },
    LineNr = { fg = p.fg0 },
    LineNrAbove = { fg = p.fg0 },
    LineNrBelow = { fg = p.fg0 },
    CursorLineNr = { fg = p.fg },
    CursorLineFold = { fg = p.fg0 },
    CursorLineSign = { fg = p.magenta },
    MatchParen = { fg = p.magenta0, bg = p.fg, bold = true, reverse = true },
    MCursor = { fg = p.bg, bg = p.magenta },
    MCursorVisual = { bg = p.bg0, bold = true },
    ModeMsg = { fg = p.fg, bold = true },
    MsgArea = { fg = p.fg },
    MsgSeparator = { fg = p.fg0 },
    MoreMsg = { fg = p.fg, bold = true },
    NonText = { fg = p.fg0 },
    Normal = { fg = p.fg, bg = p.bg },
    NormalFloat = { fg = p.fg, bg = p.bg0 },
    FloatBorder = { fg = p.fg0, bg = p.bg0 },
    FloatShadow = { bg = p.fg0, blend = 80 },
    FloatShadowThrough = { bg = p.fg0, blend = 100 },
    FloatTitle = { fg = p.fg },
    FloatFooter = { fg = p.fg },
    NormalNC = { fg = p.fg, bg = p.bg },
    Pmenu = { fg = p.fg, bg = p.bg },
    PmenuSel = { fg = p.bg, bg = p.fg },
    PmenuKind = { fg = p.fg, bg = p.bg },
    PmenuKindSel = { fg = p.bg, bg = p.fg },
    PmenuExtra = { fg = p.fg, bg = p.bg },
    PmenuExtraSel = { fg = p.bg, bg = p.fg },
    PmenuSbar = { bg = p.bg },
    PmenuThumb = { bg = p.fg0 },
    PmenuMatch = { fg = p.fg, bg = p.bg, bold = true },
    PmenuMatchSel = { fg = p.bg, bg = p.fg, bold = true },
    PmenuBorder = { fg = p.fg0 },
    PmenuShadow = { bg = p.fg0, blend = 80 },
    PmenuShadowThrough = { bg = p.fg0, blend = 100 },

    ComplMatchIns = {},
    PreInsert = {},
    ComplHint = {},
    ComplHintMore = {},

    Question = { fg = p.green },
    QuickFixLine = { fg = p.fg, bg = p.cyan0 },
    Search = { fg = p.fg, bg = p.cyan0 },

    SnippetTabstop = {},
    SnippetTabstopActive = {},

    SpecialKey = { fg = p.fg0 },
    SpellBad = { fg = p.fg, bg = p.red0, underline = true },
    SpellCap = { fg = p.fg, bg = p.blue0, underline = true },
    SpellLocal = { fg = p.fg, bg = p.cyan0, underline = true },
    SpellRare = { fg = p.fg, bg = p.magenta0, underline = true },
    StatusLine = { fg = p.fg, bg = p.bg0 },
    StatusLineNC = { fg = p.fg0, bg = p.bg0 },
    StatusLineTerm = { fg = p.bg, bg = p.fg },
    StatusLineTermNC = { fg = p.bg, bg = p.fg0 },
    TabLine = { fg = p.fg0, bg = p.bg0 },
    TabLineFill = { bg = p.bg0 },
    TabLineSel = { fg = p.fg, bg = p.bg },
    Title = { fg = p.green },
    Visual = { bg = p.bg0, bold = true },
    VisualNOS = { bold = true, reverse = true },
    Whitespace = { fg = p.fg0 },
    WildMenu = { fg = p.bg, bg = p.fg },

    WinBar = {},
    WinBarNC = {},

    -- }}}

    -- group-name {{{

    Comment = { fg = p.yellow },

    Constant = { fg = p.blue },
    String = { fg = p.blue },
    Character = { fg = p.red },
    Number = { fg = p.blue },
    Boolean = { fg = p.blue },
    Float = { fg = p.blue },

    Identifier = { fg = p.fg },
    Function = { fg = p.green },

    Statement = { fg = p.magenta },
    Conditional = { fg = p.magenta },
    Repeat = { fg = p.magenta },
    Label = { fg = p.magenta },
    Operator = { fg = p.magenta },
    Keyword = { fg = p.magenta },
    Exception = { fg = p.magenta },

    PreProc = { fg = p.magenta },
    Include = { fg = p.magenta },
    Define = { fg = p.magenta },
    Macro = { fg = p.magenta },
    PreCondit = { fg = p.magenta },

    Type = { fg = p.cyan },
    StorageClass = { fg = p.magenta },
    Structure = { fg = p.cyan },
    Typedef = { fg = p.cyan },

    Special = { fg = p.magenta },
    SpecialChar = { fg = p.magenta },
    Tag = { fg = p.magenta },
    Delimiter = { fg = p.fg0 },
    SpecialComment = { fg = p.magenta },
    Debug = { fg = p.magenta },

    Underlined = { fg = p.cyan, underline = true },
    Dimmed = { fg = p.fg0 },

    Ignore = { fg = p.fg0 },

    Error = { fg = p.red, bold = true },

    Todo = { fg = p.green, bg = p.bg0 },

    Added = { fg = p.green, bg = p.bg0 },
    Changed = { fg = p.yellow, bg = p.bg0 },
    Removed = { fg = p.red, bg = p.bg0 },

    -- }}}

    -- diagnostic-highlights {{{

    DiagnosticError = { fg = p.red },
    DiagnosticWarn = { fg = p.yellow },
    DiagnosticInfo = { fg = p.blue },
    DiagnosticHint = { fg = p.cyan },
    DiagnosticOk = { fg = p.green },
    DiagnosticVirtualTextError = { fg = p.red, bg = p.bg0 },
    DiagnosticVirtualTextWarn = { fg = p.yellow, bg = p.bg0 },
    DiagnosticVirtualTextInfo = { fg = p.blue, bg = p.bg0 },
    DiagnosticVirtualTextHint = { fg = p.cyan, bg = p.bg0 },
    DiagnosticVirtualTextOk = { fg = p.green, bg = p.bg0 },
    DiagnosticVirtualLinesError = { link = "DiagnosticError" },
    DiagnosticVirtualLinesWarn = { link = "DiagnosticWarn" },
    DiagnosticVirtualLinesInfo = { link = "DiagnosticInfo" },
    DiagnosticVirtualLinesHint = { link = "DiagnosticHint" },
    DiagnosticVirtualLinesOk = { link = "DiagnosticOk" },
    DiagnosticUnderlineError = { fg = p.red, underline = true },
    DiagnosticUnderlineWarn = { fg = p.yellow, underline = true },
    DiagnosticUnderlineInfo = { fg = p.blue, underline = true },
    DiagnosticUnderlineHint = { fg = p.cyan, underline = true },
    DiagnosticUnderlineOk = { fg = p.green, underline = true },
    DiagnosticFloatingError = { link = "DiagnosticError" },
    DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
    DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
    DiagnosticFloatingHint = { link = "DiagnosticHint" },
    DiagnosticFloatingOk = { link = "DiagnosticOk" },
    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },
    DiagnosticSignOk = { link = "DiagnosticOk" },
    DiagnosticDeprecated = { fg = p.red },
    DiagnosticUnnecessary = { fg = p.yellow },

    -- }}}

    -- treesitter-highlight-groups {{{

    ["@variable"] = { link = "Identifier" },
    ["@variable.builtin"] = { link = "Type" },
    ["@variable.parameter"] = { link = "Identifier" },
    ["@variable.parameter.builtin"] = { link = "Type" },
    ["@variable.member"] = { link = "Identifier" },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"] = { link = "Macro" },

    ["@module"] = { link = "Constant" },
    ["@module.builtin"] = { link = "Constant" },
    ["@label"] = { link = "Label" },

    ["@string"] = { link = "String" },
    ["@string.documentation"] = { link = "SpecialComment" },
    ["@string.regexp"] = { link = "SpecialChar" },
    ["@string.escape"] = { link = "Function" },
    ["@string.special"] = { link = "SpecialChar" },
    ["@string.special.symbol"] = { link = "SpecialChar" },
    ["@string.special.path"] = { link = "String" },
    ["@string.special.url"] = { link = "Underlined" },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Type" },

    ["@attribute"] = { link = "Constant" },
    ["@attribute.builtin"] = { link = "Special" },
    ["@property"] = { link = "Identifier" },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },

    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },

    ["@constructor"] = { link = "Function" },
    ["@operator"] = { link = "Operator" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.operator"] = { link = "Operator" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.type"] = { link = "Keyword" },
    ["@keyword.modifier"] = { link = "Keyword" },
    ["@keyword.repeat"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.debug"] = { link = "Keyword" },
    ["@keyword.exception"] = { link = "Keyword" },

    ["@keyword.conditional"] = { link = "Keyword" },
    ["@keyword.conditional.ternary"] = { link = "Keyword" },

    ["@keyword.directive"] = { link = "Define" },
    ["@keyword.directive.define"] = { link = "Define" },

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "SpecialChar" },

    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "SpecialComment" },

    ["@comment.error"] = { fg = p.red, bold = true, reverse = true },
    ["@comment.warning"] = { fg = p.yellow, bold = true, reverse = true },
    ["@comment.todo"] = { fg = p.green, bold = true, reverse = true },
    ["@comment.note"] = { fg = p.blue, bold = true, reverse = true },

    ["@markup.strong"] = { fg = p.cyan, bold = true },
    ["@markup.italic"] = { fg = p.yellow, italic = true },
    ["@markup.strikethrough"] = { fg = p.fg, strikethrough = true },
    ["@markup.underline"] = { link = "Underlined" },

    ["@markup.heading"] = { fg = p.green, bold = true },
    ["@markup.heading.1"] = { fg = p.green, bold = true },
    ["@markup.heading.2"] = { fg = p.blue, bold = true },
    ["@markup.heading.3"] = { fg = p.yellow, bold = true },
    ["@markup.heading.4"] = { fg = p.magenta, bold = true },
    ["@markup.heading.5"] = { fg = p.cyan, bold = true },
    ["@markup.heading.6"] = { fg = p.red, bold = true },

    ["@markup.quote"] = { fg = p.magenta },
    ["@markup.math"] = { fg = p.cyan },

    ["@markup.link"] = { link = "Tag" },
    ["@markup.link.label"] = { link = "Label" },
    ["@markup.link.url"] = { link = "Underlined" },

    ["@markup.raw"] = { link = "Function" },
    ["@markup.raw.block"] = { link = "Function" },

    ["@markup.list"] = { link = "Operator" },
    ["@markup.list.checked"] = { fg = p.green },
    ["@markup.list.unchecked"] = { fg = p.fg0 },

    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },

    ["@tag"] = { link = "Tag" },
    ["@tag.builtin"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "Constant" },
    ["@tag.delimiter"] = { link = "Delimiter" },

    -- }}}

    -- lsp-semantic-highlight {{{

    ["@lsp.type.class"] = { link = "Type" },
    ["@lsp.type.comment"] = { link = "Comment" },
    ["@lsp.type.decorator"] = { link = "Constant" },
    ["@lsp.type.enum"] = { link = "Type" },
    ["@lsp.type.enumMember"] = { link = "Constant" },
    ["@lsp.type.event"] = { link = "Identifier" },
    ["@lsp.type.function"] = { link = "Function" },
    ["@lsp.type.interface"] = { link = "Type" },
    ["@lsp.type.keyword"] = { link = "Keyword" },
    ["@lsp.type.macro"] = { link = "Macro" },
    ["@lsp.type.method"] = { link = "Function" },
    ["@lsp.type.modifier"] = { link = "Keyword" },
    ["@lsp.type.namespace"] = { link = "Constant" },
    ["@lsp.type.number"] = { link = "Number" },
    ["@lsp.type.operator"] = { link = "Operator" },
    ["@lsp.type.parameter"] = { link = "Identifier" },
    ["@lsp.type.property"] = { link = "Identifier" },
    ["@lsp.type.regexp"] = { link = "SpecialChar" },
    ["@lsp.type.string"] = { link = "String" },
    ["@lsp.type.struct"] = { link = "Type" },
    ["@lsp.type.type"] = { link = "Type" },
    ["@lsp.type.typeParameter"] = { link = "Identifier" },
    ["@lsp.type.variable"] = { link = "Identifier" },

    -- ["@lsp.mod.abstract"] = {},
    -- ["@lsp.mod.async"] = {},
    -- ["@lsp.mod.declaration"] = {},
    -- ["@lsp.mod.defaultLibrary"] = {},
    -- ["@lsp.mod.definition"] = {},
    -- ["@lsp.mod.deprecated"] = {},
    -- ["@lsp.mod.documentation"] = {},
    -- ["@lsp.mod.modification"] = {},
    -- ["@lsp.mod.readonly"] = {},
    -- ["@lsp.mod.static"] = {},

    -- }}}

    -- lsp-highlight {{{

    LspReferenceText = { fg = p.fg, bg = p.bg0 },
    LspReferenceRead = { fg = p.fg, bg = p.bg0 },
    LspReferenceWrite = { fg = p.fg, bg = p.bg0 },
    LspReferenceTarget = { fg = p.fg, bg = p.bg0 },
    LspInlayHint = { fg = p.fg0 },

    LspCodeLens = { fg = p.fg0 },
    LspCodeLensSeparator = { fg = p.fg0 },

    LspSignatureActiveParameter = { fg = p.fg, bg = p.bg0, bold = true },

    -- }}}
  }
end

return M

-- vim:et:tw=80:cc=+1:ts=2:sts=2:sw=2:fdl=0:fdm=marker:norl:
