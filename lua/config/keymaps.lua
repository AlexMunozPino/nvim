vim.keymap.set("n", "gn", ":bnext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set("n", "gb", ":bprevious<CR>", { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "gd", ":bdelete<CR>", { noremap = true, silent = true, desc = "Delete buffer" })

vim.keymap.set("n", "<leader><S-f>", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "Format file" })

local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })

---
--- BARBAR KEYMAPS
---

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)

-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Wipeout buffer
--                 :BufferWipeout

-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
map("n", "<A-S-l>", "<Cmd>BufferCloseBuffersRight<CR>", opts)
map("n", "<A-S-h>", "<Cmd>BufferCloseBuffersLeft<CR>", opts)

-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
map("n", "<C-s-p>", "<Cmd>BufferPickDelete<CR>", opts)

-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

---
---	DAP KEYMAPS
---

map("n", "<F5>", "<Cmd>lua require('dap').continue()<CR>", { desc = "Debug: Start/Continue" })
map("n", "<F10>", "<Cmd>lua require('dap').step_over()<CR>", { desc = "Debug: Step Over" })
map("n", "<F11>", "<Cmd>lua require('dap').step_into()<CR>", { desc = "Debug: Step Into" })
map("n", "<F12>", "<Cmd>lua require('dap').step_out()<CR>", { desc = "Debug: Step Out" })
map("n", "<leader>db", "<Cmd>lua require('dap').toggle_breakpoint()<CR>", { desc = "Debug: Toggle Breakpoint" })
map(
	"n",
	"<leader>dB",
	"<Cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debug: Set Conditional Breakpoint" }
)
map("n", "<leader>dr", "<Cmd>lua require('dap').repl.open()<CR>", { desc = "Debug: Open REPL" })
map("n", "<leader>du", "<Cmd>lua require('dapui').toggle()<CR>", { desc = "Debug: Toggle UI" })
