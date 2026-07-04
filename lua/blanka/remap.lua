vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true })
vim.keymap.set("n","<leader>e",vim.diagnostic.open_float,{desc = "show line diagnostic"})
vim.keymap.set("n","<leader>ne",function ()
	vim.diagnostic.goto_next({float = true})
end, {desc = 'Go to next error and show float'})


vim.keymap.set("n","<leader>pe",function ()
	vim.diagnostic.goto_prev({float = true})
end, {desc = 'Go to previous error and show float'})

vim.keymap.set("n", "<leader>tm", "<cmd>terminal<cr>", { noremap = true })

vim.keymap.set("n", "<leader>ls", '<cmd>!firefox "%"<cr>', { desc = "Open file in firefox" })















