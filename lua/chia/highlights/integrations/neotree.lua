local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("chia.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		-- NeoTree
		NeoTreeNormal = { link = "NormalFloat" },
		NeoTreeNormalNC = { link = "NormalFloat" },
		NeoTreeFloatTitle = { fg = theme.ui.bg_m1, bg = palette.dragonGray3, bold = true },
		NeoTreeFloatBorder = { fg = theme.ui.bg_p2, bg = theme.ui.float.bg_border },
		NeoTreeWinSeparator = { link = "WinSeparator" },
		NeoTreeTabInactive = { link = "TabLine" },
		NeoTreeTabActive = { link = "TabLineSel" },
		NeoTreeTabSeparatorInactive = { link = "NeoTreeTabInactive" },
		NeoTreeTabSeparatorActive = { link = "NeoTreeTabActive" },
		NeoTreeRootName = { fg = palette.dragonRed, bold = true },
		NeoTreeModified = { link = "String" },
		NeoTreeGitModified = { fg = theme.vcs.changed },
		NeoTreeGitAdded = { fg = theme.vcs.added },
		NeoTreeGitDeleted = { fg = theme.vcs.removed },
		NeoTreeGitStaged = { fg = theme.vcs.added },
		NeoTreeGitConflict = { fg = theme.diag.error },
		NeoTreeGitUntracked = { link = "NeoTreeGitModified", default = true },
		NeoTreeGitUnstaged = { link = "NeoTreeGitModified", default = true },
		NeoTreeIndentMarker = { fg = theme.ui.indent },
		NeoTreeFileNameOpened = { fg = theme.syn.special1, italic = true },
		NeoTreeSymbolicLinkTarget = { link = "Type" },
	}
end

return M
