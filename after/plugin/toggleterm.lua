require("toggleterm").setup({
	size = 60,
	direction = 'vertical',
	winbar = {
		enabled = false,
		name_formatter = function(term) --  term: Terminal
			return term.name
		end
	},

})

vim.keymap.set('n', "<leader>ntm", "<cmd>TermNew<cr>")
vim.keymap.set('n', '<leader>t1', '<cmd>1ToggleTerm<cr>')
vim.keymap.set('n', '<leader>t2', '<cmd>2ToggleTerm<cr>')
vim.keymap.set('n', '<leader>t3', '<cmd>3ToggleTerm<cr>')
vim.keymap.set('n', '<leader>t4', '<cmd>4ToggleTerm<cr>')
vim.keymap.set('n', '<leader>t5', '<cmd>5ToggleTerm<cr>')

vim.keymap.set('n', '<leader>ta', "<cmd>ToggleTermToggleAll<cr>")
