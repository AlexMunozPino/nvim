return {
	"rmagatti/auto-session",
	lazy = false,
	opts = {
		suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	},
	config = function()
		require("auto-session").setup({
			auto_session_enabled = true, -- Enable auto-session (default: true)
			auto_save_enabled = true, -- Automatically save sessions (default: true)
			auto_restore_enabled = true, -- Automatically restore sessions (default: true)
			auto_session_create_enabled = true, -- Automatically create new sessions (default: true)
		})
	end,
}
