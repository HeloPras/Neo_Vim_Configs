vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true })





-- error diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "show line diagnostic" })
vim.keymap.set("n", "<leader>ne", function()
	vim.diagnostic.goto_next({ float = true })
end, { desc = 'Go to next error and show float' })



vim.keymap.set("n", "<leader>pe", function()
	vim.diagnostic.goto_prev({ float = true })
end, { desc = 'Go to previous error and show float' })


-- auto brackets and quotes
vim.keymap.set('i', "(", "()<Left>")
vim.keymap.set('i', "{", "{}<Left>")
vim.keymap.set('i', "[", "[]<Left>")
vim.keymap.set('i', "'", "''<Left>")
vim.keymap.set('i', '"', '""<Left>')
-- vim.keymap.set('i','<','<><Left>')
vim.keymap.set('i', '`', '``<Left>')



-- vim's window controller
vim.keymap.set('n', '<leader>nw', '<cmd>vsplit<cr>', { desc = "split vertically" })
vim.keymap.set('n', '<leader>wn', '<cmd>split<cr>', { desc = "split horizontally" })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = "go to right split" })
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = "go to left split" })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = "go to up split" })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = "go to down split" })





vim.keymap.set("n", "vie", "ggVG", { desc = "select all" })



-- Normal mode: Toggle comment for the current line
vim.keymap.set('n', '<C-/>', 'gcc', { remap = true, desc = 'Toggle comment line' })
vim.keymap.set('i', '<C-/>', 'gcc', { remap = true, desc = 'Toggle comment line' })

-- Visual mode: Toggle comment for the selected block
vim.keymap.set('v', '<C-/>', 'gc', { remap = true, desc = 'Toggle comment selection' })


vim.keymap.set("n", "<leader>tm", "<cmd>terminal<cr>", { noremap = true })
