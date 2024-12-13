--return {
--	-- You can easily change to a different colorscheme.
--	-- Change the name of the colorscheme plugin below, and then
--	-- change the command in the config to whatever the name of that colorscheme is.
--	--
--	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
--	"folke/tokyonight.nvim",
--	priority = 1000, -- Make sure to load this before all the other start plugins.
--	init = function()
--		-- Load the colorscheme here.
--		-- Like many other themes, this one has different styles, and you could load
--		-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
--		vim.cmd.colorscheme("tokyonight-night")
--
--		-- You can configure highlights by doing something like:
--		vim.cmd.hi("Comment gui=none")
--	end,
--	config = function()
--		require("tokyonight").setup({
--			transparent = true,
--		})
--		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--	end,
--}
return {
	-- Specify the Tokyodark theme plugin.
	"tiagovla/tokyodark.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	opts = {
		transparent_background = true, -- Keep the background opaque.
		gamma = 1.00, -- Adjust the brightness level.
		styles = {
			comments = { italic = true }, -- Style for comments.
			keywords = { italic = true }, -- Style for keywords.
			identifiers = { italic = true }, -- Style for identifiers.
			functions = {}, -- Style for functions.
			variables = {}, -- Style for variables.
		},
		custom_highlights = function(highlights, palette)
			-- Define custom highlights here.
			return {}
		end,
		custom_palette = function(palette)
			-- Define custom palette modifications here.
			return {}
		end,
		terminal_colors = true, -- Enable terminal colors.
	},
	config = function(_, opts)
		-- Setup the Tokyodark theme with the given options.
		require("tokyodark").setup(opts)
		-- Apply the colorscheme.
		vim.cmd("colorscheme tokyodark")
	end,
}
