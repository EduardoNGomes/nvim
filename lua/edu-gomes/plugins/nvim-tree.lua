return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- Set up keymap to toggle nvim-tree
		vim.keymap.set("n", "<Leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
		-- Make the nvim-tree background transparent
		vim.cmd("hi NvimTreeNormal guibg=NONE ctermbg=NONE") -- Transparent background for the file tree
		vim.cmd("hi NvimTreeVertSplit guibg=NONE ctermbg=NONE") -- Transparent vertical split in file tree

		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
		})
	end,
}
