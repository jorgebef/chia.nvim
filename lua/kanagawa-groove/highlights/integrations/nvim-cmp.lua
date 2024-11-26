local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("kanagawa-groove.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		-- Cmp
		CmpDocumentation = { link = "NormalFloat" },
		CmpDocumentationBorder = { link = "FloatBorder" },
		CmpCompletion = { link = "Pmenu" },
		CmpCompletionSel = { fg = "NONE", bg = theme.ui.pmenu.bg_sel },
		CmpCompletionBorder = { bg = theme.ui.bg_p3, fg = theme.ui.bg },
		CmpCompletionThumb = { link = "PmenuThumb" },
		CmpCompletionSbar = { link = "PmenuSbar" },
		CmpItemAbbr = { fg = theme.ui.pmenu.fg },
		CmpItemAbbrDeprecated = { fg = theme.syn.comment, strikethrough = true },
		CmpItemAbbrMatch = { fg = theme.syn.fun },
		CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
		CmpItemKindDefault = { fg = theme.ui.fg_dim },
		CmpItemMenu = { fg = theme.ui.fg_dim },
		CmpItemKindText = { fg = theme.ui.fg },
		CmpItemKindMethod = { link = "@function.method" },
		CmpItemKindFunction = { link = "Function" },
		CmpItemKindConstructor = { link = "@constructor" },
		CmpItemKindField = { link = "@variable.member" },
		CmpItemKindVariable = { link = "@variable" },
		CmpItemKindClass = { link = "Type" },
		CmpItemKindInterface = { link = "Type" },
		CmpItemKindModule = { link = "@module" },
		CmpItemKindProperty = { link = "@property" },
		CmpItemKindUnit = { link = "Number" },
		CmpItemKindValue = { link = "String" },
		CmpItemKindEnum = { link = "Type" },
		CmpItemKindKeyword = { link = "Keyword" },
		CmpItemKindSnippet = { link = "Special" },
		CmpItemKindColor = { link = "Special" },
		CmpItemKindFile = { link = "Directory" },
		CmpItemKindReference = { link = "Special" },
		CmpItemKindFolder = { link = "Directory" },
		CmpItemKindEnumMember = { link = "Constant" },
		CmpItemKindConstant = { link = "Constant" },
		CmpItemKindStruct = { link = "Type" },
		CmpItemKindEvent = { link = "Type" },
		CmpItemKindOperator = { link = "Operator" },
		CmpItemKindTypeParameter = { link = "Type" },
		CmpItemKindCopilot = { link = "String" },
	}
end

return M
