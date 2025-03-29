require("nvim-tree").setup({
	git = {
		enable = true, -- Enable Git integration
		ignore = false, -- Do not ignore files in .gitignore
		timeout = 400, -- Timeout for Git operations (in milliseconds)
	},
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
		highlight_git = true, -- Highlight Git status in the file tree
		icons = {
			show = {
				git = true, -- Show Git icons next to files
			},
		},
	},
	filters = {
		dotfiles = false,
	},
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.keymap.set("n", "<C-n>", "<CMD>NvimTreeToggle<Cr>", { desc = "Open Nvim-tree in parent directory" })
