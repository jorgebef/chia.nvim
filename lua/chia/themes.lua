---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field member ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field attribute ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec
---@field special4 ColorSpec
---@field special5 ColorSpec
---@field special6 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec
--
---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec
---@field addDark ColorSpec
---@field deleteDark ColorSpec
---@field changeDark ColorSpec
---@field textDark ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec
---@field addedDark ColorSpec
---@field removedDark ColorSpec
---@field changedDark ColorSpec

---@class ModeElements
---@field normal ColorSpec
---@field insert ColorSpec
---@field visual ColorSpec
---@field replace ColorSpec
---@field command ColorSpec

---@class UiElements
---@field fg ColorSpec Default foreground
---@field fg_gray ColorSpec Slightly darker, offwhite
---@field fg_dim ColorSpec Dimmed foreground
---@field fg_dimmer ColorSpec Dimmer foreground
---@field fg_dark ColorSpec Dark foreground text
---@field fg_reverse ColorSpec
---@field bg_dim ColorSpec Dimmed background
---@field bg_m1 ColorSpec Darkest background
---@field bg ColorSpec Default background
---@field bg_p1 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p2 ColorSpec Lighter background Cursor{Line,Column}, TabLineSel (Selected Items)
---@field bg_p3 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p4 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p5 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_gutter ColorSpec {Sign,Fold}Column, LineNr
---@field bg_search ColorSpec
---@field bg_cursorline ColorSpec
---@field bg_visual ColorSpec
---@field bg_tabline ColorSpec
---@field special ColorSpec SpecialKey
---@field nontext ColorSpec LineNr, NonText
---@field whitespace ColorSpec Whitespace
---@field win_separator ColorSpec
---@field indent ColorSpec Indent line character
---@field picker ColorSpec Color of picker letters e.g. bufferline pick buffer
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class RainbowColors
---@field rainbow1 ColorSpec
---@field rainbow2 ColorSpec
---@field rainbow3 ColorSpec
---@field rainbow4 ColorSpec
---@field rainbow5 ColorSpec
---@field rainbow6 ColorSpec
---@field rainbow7 ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field modes ModeElements
---@field rainbow RainbowColors
---@field term ColorSpec[]

---@param palette PaletteColors
---@return ThemeColors
return function(palette)
	-- local gutter_bg = require("chia.config").options.gutter and palette.sumiInk4 or "NONE"

	return {
		modes = {
			normal = palette.blue_shade,
			insert = palette.green_eye,
			visual = palette.pink_nose,
			replace = palette.red_lip,
			command = palette.yellow_warm,
		},
		ui = {
			fg = palette["fg"],
			fg_gray = palette.gray,
			fg_dark = palette.black3,
			fg_dim = palette.white3,
			fg_dimmer = palette.black_010,
			fg_reverse = palette.darkBlue1,

			bg_m2 = palette.black_003,
			bg_m1 = palette.black_003,
			bg = palette.bg,
			bg_p1 = palette.black_004,
			bg_p2 = palette.black_006,
			bg_p3 = palette.black_008,
			bg_p4 = palette.black_009,
			bg_p5 = palette.black_012,
			bg_dim = palette.black_001,
			bg_gutter = "NONE",
			bg_search = palette.pink_nose,
			bg_cursorline = palette.black_008,
			bg_visual = palette.black_009,
			bg_tabline = palette.black_001,

			special = palette.purple_muted,
			nontext = palette.black_009,
			whitespace = palette.black_009,

			win_separator = palette.black_009,
			indent = palette.black_008,
			picker = palette.red_lip,
			pmenu = {
				fg = palette.white_007,
				fg_sel = "NONE", -- This is important to make highlights pass-through
				bg = palette.black_002,
				bg_sel = palette.black_009,
				bg_sbar = palette.blue_muted,
				bg_thumb = palette.black_009,
			},
			float = {
				fg = palette.oldWhite,
				bg = palette["base-100"],
				fg_border = palette["base-125"],
				bg_border = palette["base-025"],
			},
		},
		rainbow = {
			rainbow1 = palette.red_lip,
			rainbow2 = palette.yellow,
			rainbow3 = palette.dragonBlue,
			rainbow4 = palette.orange,
			rainbow5 = palette["green-500"],
			rainbow6 = palette.gray,
			rainbow7 = palette["pink-800"],
		},
		syn = {
			string = palette.green_eye,
			variable = "NONE",
			member = palette["soft_fur"],
			number = palette.pink_bean,
			constant = palette.orange,
			identifier = palette.yellow,
			parameter = palette.purple_muted,
			attribute = palette.soft_fur,
			fun = palette.blue_eye,
			statement = palette.purple_muted,
			keyword = palette.pink_bean,
			operator = palette.pink_nose,
			preproc = palette.red_lip,
			type = palette["yellow"],
			regex = palette.red_lip,
			deprecated = palette.gray,
			punct = palette.lightGray,
			comment = palette.black_010,
			special1 = palette.pink_bean,
			special2 = palette.pink_paw,
			special3 = palette.purple_accent,
			special4 = palette.blue_muted,
			special5 = palette.blue_shade,
			special6 = palette.red_shade,
		},
		vcs = {
			added = palette.green_eye,
			addedDark = palette.darkGreen,
			removed = palette.red_lip,
			removedDark = palette.pink_paw,
			changed = palette.yellow,
			changedDark = palette.darkYellow,
		},
		diff = {
			add = palette.green_eye,
			addDark = palette.darkGreen,
			delete = palette.red_lip,
			deleteDark = palette.pink_paw,
			change = palette.yellow,
			changeDark = palette.darkYellow,
			text = palette.blue_eye,
			textDark = palette.darkBlue,
		},
		diag = {
			error = palette.red_lip,
			ok = palette.green_eye,
			warning = palette.yellow,
			info = palette.blue_eye,
			hint = palette["pink-800"],
		},
		term = {
			palette.black0, -- black
			palette.red_lip, -- red
			palette.green_eye, -- green
			palette.yellow, -- yellow
			palette.blue_eye, -- blue
			palette.pink_bean, -- magenta
			palette["pink-800"], -- cyan
			palette["base-975"], -- white
			palette.gray, -- bright black
			palette["pink_paw"], -- bright red
			palette.darkGreen, -- bright green
			palette.darkYellow, -- bright yellow
			palette.darkBlue, -- bright blue
			palette.purple_muted, -- bright magenta
			palette["pink-800"], -- bright cyan
			palette["base-975"], -- bright white
			palette.orange, -- extended color 1
			palette.darkOrange, -- extended color 2
		},
	}
end
