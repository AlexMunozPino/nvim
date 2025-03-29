return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_no_tab_map = true -- Don't map to tab
		vim.g.copilot_assume_mapped = true -- Assume mappings are set manually
		vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
	end,
}
