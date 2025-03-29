return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensure this colorscheme loads first
    config = function()
      -- Setup the colorscheme here
      require("catppuccin").setup({
        -- Add any custom configuration for the colorscheme here
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
        transparent_background = false,
        term_colors = true,
      })

      -- Set the colorscheme
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
