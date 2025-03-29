return {
	"sbdchd/neoformat",
	config = function()
		-- Create an autocommand group
		vim.api.nvim_create_augroup("format_on_save", { clear = true })

		-- Define the autocommand
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = "format_on_save",
			pattern = "*", -- Apply to all files
			callback = function()
				-- Format the file using Neoformat
				vim.cmd("undojoin | Neoformat")
			end,
		})
	end,
}
