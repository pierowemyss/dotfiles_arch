return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			-- blue = "#a1e6fa",
			-- blue = "#78a9ff",
			blue = "#33b1ff",
			-- green = "#85f689",
			-- green = "#42be65",
			green = "#42be65",
			-- violet = "#be94e4",
			-- violet = "#be95ff",
			violet = "#be95ff",
			-- yellow = "#f6cd79",
			-- yellow = "NvimLightYellow",
			yellow = "#3ddbd9",
			-- red = "#eb615b",
			-- red = "#ee5369",
			red = "#ee5369",
			-- fg = "#c3ccdc",
			-- fg = "#d0d0d0",
			fg = "#f2f4f8",
			-- bg = "#112638",
			bg = "none",
			inactive_bg = "none",
			-- inactive_bg = "#2c3043",
			-- dark_fg = "#585858",
			dark_fg = "#161616",
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.dark_fg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.dark_fg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.dark_fg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.dark_fg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.dark_fg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			},
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = my_lualine_theme,
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
