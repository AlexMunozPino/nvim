return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- Example configuration for Lua LSP
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			lspconfig.jdtls.setup({})
			lspconfig.eslint.setup({})
			lspconfig.ts_ls.setup({})

			lspconfig.prismals.setup({
				cmd = { "prisma-language-server", "--stdio" },
				filetypes = { "prisma" },
				settings = {
					prisma = {
						prismaFmtBinPath = "", -- O deja vacío para usar el formato por defecto
					},
				},
			})

			-- Add more LSP configurations as needed
		end,
	},
}
