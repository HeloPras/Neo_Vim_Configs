vim.opt.number = true
vim.o.relativenumber = true

vim.schedule(function()
	vim.opt.number = true

	vim.o.breakindent = true

	vim.o.undofile = true

	vim.o.signcolumn = 'yes'

	vim.api.nvim_create_autocmd('TextYankPost', {
		desc = 'Highlight when yanking (copying) text',
		group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
		callback = function()
			vim.hl.on_yank()
		end,
	})
end)


vim.o.breakindent = true

vim.o.undofile = true

vim.o.signcolumn = 'yes'

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
