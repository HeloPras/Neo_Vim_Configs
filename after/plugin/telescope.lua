local builtin = require('telescope.builtin')
local actions = require('telescope.actions')


require('telescope').setup({
	defaults = {
		mappings = {
			n = {
				["<C-l>"] = actions.select_vertical,
				["<C-v>"] = false,

			}
		}
	}
})


vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope git file' })
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'opens diagnostic in telescope' })

vim.keymap.set('n', '<leader>qf', builtin.quickfix, { desc = "opens quick fix" })


-- vim.keymap.set('n', '<leader>n', function()
-- 	vim.cmd.vsplit()
-- 	vim.cmd.wincmd("l")
-- 	builtin.find_files()
-- end, { desc = "opens new window with telescope" })
