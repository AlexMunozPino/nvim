return {
	-- Add mason-nvim-dap and nvim-dap-ui
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			ensure_installed = { "java-debug-adapter" }, -- Add other debug adapters as needed
			automatic_installation = true,
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
		config = function()
			require("dapui").setup()
			local dap = require("dap")

			-- Java Debug Adapter Configuration
			dap.adapters.java = function(callback)
				callback({
					type = "server",
					host = "127.0.0.1",
					port = 8000,
				})
			end

			dap.configurations.java = {
				{
					type = "java",
					request = "attach",
					name = "Debug (Attach) - Remote",
					hostName = "127.0.0.1",
					port = 8000,
				},
			}
			-- Define custom signs
			vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
			vim.fn.sign_define(
				"DapBreakpointRejected",
				{ text = "○", texthl = "DapBreakpointRejected", linehl = "", numhl = "" }
			)
			vim.fn.sign_define(
				"DapStopped",
				{ text = "→", texthl = "DapStopped", linehl = "DapStoppedLine", numhl = "" }
			)
			vim.fn.sign_define(
				"DapBreakpointCondition",
				{ text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" }
			)

			-- Optional: Highlight groups for the signs
			vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#FF0000" }) -- Red dot for breakpoints
			vim.api.nvim_set_hl(0, "DapBreakpointRejected", { fg = "#FFA500" }) -- Orange dot for rejected breakpoints
			vim.api.nvim_set_hl(0, "DapStopped", { fg = "#00FF00" }) -- Green arrow for the current line
			vim.api.nvim_set_hl(0, "DapStoppedLine", { bg = "#2E3440" }) -- Background for the current line
			vim.api.nvim_set_hl(0, "DapBreakpointCondition", { fg = "#FF0000" }) -- Red dot for breakpoints
		end,
	},
}
