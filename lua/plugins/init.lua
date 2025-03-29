-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		require("plugins.catppuccin"),
		require("plugins.nvim-web-devicons"),
		require("plugins.telescope"),
		require("plugins.which-key"),
		require("plugins.nvim-lspconfig"),
		require("plugins.mason-lsp"),
		require("plugins.neoformat"),
		require("plugins.completion"),
		require("plugins.barbar"),
		require("plugins.auto-session"),
		require("plugins.copilot"),
		require("plugins.dap"),
		{
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("plugins.nvim-colorizer")
			end,
		},
		{
			"nvim-tree/nvim-tree.lua",
			config = function()
				require("plugins.tree")
			end,
		},
		{
			"numToStr/Comment.nvim",
			config = function()
				require("plugins.comment")
			end,
		},
	},
	checker = { enabled = true },
})
