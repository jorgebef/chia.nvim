---@alias ColorSpec string RGB Hex string
---@alias ColorTable table<string, ColorSpec>
---@alias KanagawaColorsSpec { palette: ColorTable, theme: ColorTable }
---@alias KanagawaColors { palette: PaletteColors, theme: ThemeColors }

local M = {}

---@class KanagawaConfig
local defaults = {
	undercurl = true,
	transparent = false,
	gutter = false,
	dimInactive = false, -- disabled when transparent
	terminalColors = true,
	commentStyle = { italic = true },
	functionStyle = { italic = false },
	keywordStyle = { italic = false, bold = false },
	statementStyle = { italic = false, bold = false },
	typeStyle = { italic = false },
	colors = { theme = {}, palette = {} },
	integrations = {
		["navic"] = true,
		["nvim-cmp"] = true,
		["gitsigns"] = true,
		["gitgutter"] = true,
		["telescope"] = true,
		["nvim-tree"] = true,
		["neotree"] = true,
	},
	---@type fun(colors: KanagawaColorsSpec): table<string, table>
	overrides = function()
		return {}
	end,
}

---@type KanagawaConfig
M.options = {}

---@param options? KanagawaConfig user configuration
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

---@param options? KanagawaConfig user configuration
function M.extend(options)
	M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

M.setup()

return M
