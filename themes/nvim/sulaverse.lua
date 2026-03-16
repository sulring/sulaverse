-- Sulaverse — Neovim colorscheme
-- Installation: copy to ~/.config/nvim/colors/sulaverse.lua
-- Usage: vim.cmd("colorscheme sulaverse")
--        or: colorscheme sulaverse

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.g.colors_name = "sulaverse"

local dark = vim.o.background == "dark"

local p = dark and {
  bg        = "#161d2c",
  surface   = "#1d232f",
  overlay   = "#222a39",
  muted     = "#697386",
  subtle    = "#8d93ab",
  text      = "#dce5f4",
  a1        = "#ec5f5f",
  a2        = "#f5ac7a",
  a3        = "#ecdac0",
  a4        = "#3d8cbd",
  a5        = "#85d2d6",
  a6        = "#9893be",
  hi_low    = "#1f252d",
  hi_med    = "#3d4352",
  hi_high   = "#505a68",
  none      = "NONE",
} or {
  bg        = "#f7f2e8",
  surface   = "#fff9f0",
  overlay   = "#f7edde",
  muted     = "#9596b1",
  subtle    = "#616780",
  text      = "#24324c",
  a1        = "#b54c40",
  a2        = "#d5651a",
  a3        = "#c59c63",
  a4        = "#337fae",
  a5        = "#63abb0",
  a6        = "#6b639c",
  hi_low    = "#efe8e0",
  hi_med    = "#ebdbcc",
  hi_high   = "#d2c2ad",
  none      = "NONE",
}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- ── Editor ──────────────────────────────────────────
hl("Normal",          { bg = p.bg,       fg = p.text })
hl("NormalFloat",     { bg = p.overlay,  fg = p.text })
hl("NormalNC",        { bg = p.bg,       fg = p.subtle })
hl("ColorColumn",     { bg = p.hi_low })
hl("Conceal",         { fg = p.muted })
hl("Cursor",          { bg = p.text,     fg = p.bg })
hl("CursorLine",      { bg = p.hi_low })
hl("CursorLineNr",    { fg = p.text,     bold = true })
hl("CursorColumn",    { bg = p.hi_low })
hl("DiffAdd",         { bg = p.hi_low,   fg = p.a5 })
hl("DiffChange",      { bg = p.hi_low,   fg = p.a2 })
hl("DiffDelete",      { bg = p.hi_low,   fg = p.a1 })
hl("DiffText",        { bg = p.hi_med,   fg = p.a2 })
hl("Directory",       { fg = p.a4 })
hl("EndOfBuffer",     { fg = p.hi_med })
hl("ErrorMsg",        { fg = p.a1 })
hl("FloatBorder",     { bg = p.overlay,  fg = p.hi_high })
hl("FoldColumn",      { fg = p.muted })
hl("Folded",          { bg = p.hi_med,   fg = p.muted })
hl("IncSearch",       { bg = p.a6,       fg = p.bg,     bold = true })
hl("LineNr",          { fg = p.muted })
hl("MatchParen",      { bg = p.hi_med,   bold = true })
hl("ModeMsg",         { fg = p.text })
hl("MoreMsg",         { fg = p.a5 })
hl("MsgArea",         { fg = p.subtle })
hl("NonText",         { fg = p.hi_high })
hl("Pmenu",           { bg = p.overlay,  fg = p.subtle })
hl("PmenuSel",        { bg = p.hi_med,   fg = p.text })
hl("PmenuSbar",       { bg = p.overlay })
hl("PmenuThumb",      { bg = p.hi_high })
hl("Question",        { fg = p.a4 })
hl("QuickFixLine",    { bg = p.hi_med })
hl("Search",          { bg = p.hi_med,   fg = p.text })
hl("SignColumn",      { bg = p.bg,       fg = p.muted })
hl("SpecialKey",      { fg = p.muted })
hl("SpellBad",        { undercurl = true, sp = p.a1 })
hl("SpellCap",        { undercurl = true, sp = p.a4 })
hl("SpellRare",       { undercurl = true, sp = p.a6 })
hl("SpellLocal",      { undercurl = true, sp = p.a5 })
hl("StatusLine",      { bg = p.surface,  fg = p.subtle })
hl("StatusLineNC",    { bg = p.surface,  fg = p.muted })
hl("Substitute",      { bg = p.a1,       fg = p.bg })
hl("TabLine",         { bg = p.surface,  fg = p.muted })
hl("TabLineFill",     { bg = p.surface })
hl("TabLineSel",      { bg = p.a6,       fg = p.bg })
hl("Title",           { fg = p.text,     bold = true })
hl("VertSplit",       { fg = p.hi_med })
hl("WinSeparator",    { fg = p.hi_med })
hl("Visual",          { bg = p.hi_med })
hl("WarningMsg",      { fg = p.a2 })
hl("Whitespace",      { fg = p.hi_high })
hl("WildMenu",        { bg = p.overlay,  fg = p.text })

-- ── Syntax ──────────────────────────────────────────
hl("Comment",         { fg = p.muted,    italic = true })
hl("Constant",        { fg = p.a2 })
hl("String",          { fg = p.a5 })
hl("Character",       { fg = p.a5 })
hl("Number",          { fg = p.a2 })
hl("Boolean",         { fg = p.a2 })
hl("Float",           { fg = p.a2 })
hl("Identifier",      { fg = p.text })
hl("Function",        { fg = p.a4 })
hl("Statement",       { fg = p.a6,       bold = true })
hl("Conditional",     { fg = p.a6,       bold = true })
hl("Repeat",          { fg = p.a6,       bold = true })
hl("Label",           { fg = p.a6 })
hl("Operator",        { fg = p.subtle })
hl("Keyword",         { fg = p.a6,       bold = true })
hl("Exception",       { fg = p.a1 })
hl("PreProc",         { fg = p.a4 })
hl("Include",         { fg = p.a4 })
hl("Define",          { fg = p.a6 })
hl("Macro",           { fg = p.a4 })
hl("PreCondit",       { fg = p.a4 })
hl("Type",            { fg = p.a3 })
hl("StorageClass",    { fg = p.a6 })
hl("Structure",       { fg = p.a3 })
hl("Typedef",         { fg = p.a3 })
hl("Special",         { fg = p.a4 })
hl("SpecialChar",     { fg = p.a5 })
hl("Tag",             { fg = p.a1 })
hl("Delimiter",       { fg = p.subtle })
hl("SpecialComment",  { fg = p.muted,    italic = true })
hl("Debug",           { fg = p.a1 })
hl("Underlined",      { underline = true })
hl("Ignore",          { fg = p.muted })
hl("Error",           { fg = p.a1,       bold = true })
hl("Todo",            { bg = p.hi_med,   fg = p.a2,    bold = true })

-- ── Diagnostics ─────────────────────────────────────
hl("DiagnosticError",            { fg = p.a1 })
hl("DiagnosticWarn",             { fg = p.a2 })
hl("DiagnosticInfo",             { fg = p.a4 })
hl("DiagnosticHint",             { fg = p.a5 })
hl("DiagnosticVirtualTextError", { fg = p.a1, bg = p.hi_low, italic = true })
hl("DiagnosticVirtualTextWarn",  { fg = p.a2, bg = p.hi_low, italic = true })
hl("DiagnosticVirtualTextInfo",  { fg = p.a4, bg = p.hi_low, italic = true })
hl("DiagnosticVirtualTextHint",  { fg = p.a5, bg = p.hi_low, italic = true })
hl("DiagnosticUnderlineError",   { undercurl = true, sp = p.a1 })
hl("DiagnosticUnderlineWarn",    { undercurl = true, sp = p.a2 })
hl("DiagnosticUnderlineInfo",    { undercurl = true, sp = p.a4 })
hl("DiagnosticUnderlineHint",    { undercurl = true, sp = p.a5 })

-- ── Treesitter ──────────────────────────────────────
hl("@comment",               { link = "Comment" })
hl("@comment.documentation", { fg = p.muted, italic = true })
hl("@string",                { link = "String" })
hl("@string.escape",         { fg = p.a4 })
hl("@string.special",        { fg = p.a4 })
hl("@number",                { link = "Number" })
hl("@float",                 { link = "Float" })
hl("@boolean",               { link = "Boolean" })
hl("@keyword",               { fg = p.a6, bold = true })
hl("@keyword.function",      { fg = p.a6, bold = true })
hl("@keyword.return",        { fg = p.a1 })
hl("@keyword.operator",      { fg = p.subtle })
hl("@conditional",           { fg = p.a6, bold = true })
hl("@repeat",                { fg = p.a6, bold = true })
hl("@exception",             { fg = p.a1 })
hl("@function",              { fg = p.a4 })
hl("@function.builtin",      { fg = p.a4, italic = true })
hl("@function.call",         { fg = p.a4 })
hl("@method",                { fg = p.a4 })
hl("@method.call",           { fg = p.a4 })
hl("@constructor",           { fg = p.a3 })
hl("@type",                  { fg = p.a3 })
hl("@type.builtin",          { fg = p.a3, italic = true })
hl("@type.definition",       { fg = p.a3 })
hl("@type.qualifier",        { fg = p.a6 })
hl("@variable",              { fg = p.text })
hl("@variable.builtin",      { fg = p.a1 })
hl("@parameter",             { fg = p.text })
hl("@field",                 { fg = p.text })
hl("@property",              { fg = p.text })
hl("@namespace",             { fg = p.a3 })
hl("@operator",              { fg = p.subtle })
hl("@punctuation.bracket",   { fg = p.subtle })
hl("@punctuation.delimiter", { fg = p.subtle })
hl("@punctuation.special",   { fg = p.a4 })
hl("@tag",                   { fg = p.a1 })
hl("@tag.attribute",         { fg = p.a2 })
hl("@tag.delimiter",         { fg = p.subtle })
hl("@include",               { fg = p.a4 })
hl("@define",                { fg = p.a6 })
hl("@macro",                 { fg = p.a4 })
hl("@constant",              { fg = p.a2 })
hl("@constant.builtin",      { fg = p.a2, italic = true })
hl("@label",                 { fg = p.a6 })
hl("@error",                 { fg = p.a1 })
hl("@text.strong",           { bold = true })
hl("@text.emphasis",         { italic = true })
hl("@text.underline",        { underline = true })
hl("@text.uri",              { fg = p.a4, underline = true })
hl("@text.title",            { fg = p.text, bold = true })
hl("@text.literal",          { fg = p.a5 })
hl("@text.reference",        { fg = p.a6 })
hl("@text.todo",             { bg = p.hi_med, fg = p.a2, bold = true })
hl("@text.warning",          { bg = p.hi_low, fg = p.a2 })
hl("@text.danger",           { bg = p.hi_low, fg = p.a1 })

-- ── LSP ─────────────────────────────────────────────
hl("LspReferenceText",  { bg = p.hi_med })
hl("LspReferenceRead",  { bg = p.hi_med })
hl("LspReferenceWrite", { bg = p.hi_med, underline = true })

-- ── Plugins (common) ────────────────────────────────
-- nvim-tree
hl("NvimTreeNormal",       { bg = p.surface, fg = p.subtle })
hl("NvimTreeRootFolder",   { fg = p.a6, bold = true })
hl("NvimTreeFolderName",   { fg = p.a4 })
hl("NvimTreeOpenedFolderName", { fg = p.a4, bold = true })
hl("NvimTreeGitDirty",     { fg = p.a2 })
hl("NvimTreeGitNew",       { fg = p.a5 })
hl("NvimTreeGitDeleted",   { fg = p.a1 })

-- telescope
hl("TelescopeNormal",      { bg = p.overlay, fg = p.text })
hl("TelescopeBorder",      { bg = p.overlay, fg = p.hi_high })
hl("TelescopeSelection",   { bg = p.hi_med })
hl("TelescopeMatching",    { fg = p.a5, bold = true })
hl("TelescopePromptPrefix",{ fg = p.a6 })

-- gitsigns
hl("GitSignsAdd",     { fg = p.a5 })
hl("GitSignsChange",  { fg = p.a2 })
hl("GitSignsDelete",  { fg = p.a1 })

-- which-key
hl("WhichKey",        { fg = p.a6 })
hl("WhichKeyGroup",   { fg = p.a4 })
hl("WhichKeyDesc",    { fg = p.subtle })
