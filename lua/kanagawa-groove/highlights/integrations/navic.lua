local M = {}

---@type KanagawaHighlightsFn
function M.get(colors)
	local theme = colors.theme

	return {
		-- Nvim-Navic
		NavicIconsFile = { link = "Directory" },
		NavicIconsModule = { link = "@module" },
		NavicIconsNamespace = { link = "@module" },
		NavicIconsPackage = { link = "@module" },
		NavicIconsClass = { link = "Type" },
		NavicIconsMethod = { link = "@function.method" },
		NavicIconsProperty = { link = "@property" },
		NavicIconsField = { link = "@variable.member" },
		NavicIconsConstructor = { link = "@constructor" },
		NavicIconsEnum = { link = "Type" },
		NavicIconsInterface = { link = "Type" },
		NavicIconsFunction = { link = "Function" },
		NavicIconsVariable = { link = "@variable" },
		NavicIconsConstant = { link = "Constant" },
		NavicIconsString = { link = "String" },
		NavicIconsNumber = { link = "Number" },
		NavicIconsBoolean = { link = "Boolean" },
		NavicIconsArray = { link = "Type" },
		NavicIconsObject = { link = "Type" },
		NavicIconsKey = { link = "Identifier" },
		NavicIconsNull = { link = "Type" },
		NavicIconsEnumMember = { link = "Constant" },
		NavicIconsStruct = { link = "Structure" },
		NavicIconsEvent = { link = "Structure" },
		NavicIconsOperator = { link = "Operator" },
		NavicIconsTypeParameter = { link = "Type" },
		NavicText = { fg = theme.ui.fg_dim },
		NavicSeparator = { fg = theme.ui.fg_dim },
	}
end

return M
