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


-- -- Select your preferred executable path
-- local terminal_preview_path =
-- "C:/Users/User/AppData/Local/Microsoft/WindowsApps/wt.exe" -- Use "powershell" for built-in Windows PowerShell, or full path to Terminal Preview
--
-- if vim.fn.executable(terminal_preview_path) == 1 then
-- 	vim.o.shell = terminal_preview_path
-- 	vim.o.shellcmdflag =
-- 	"-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"
-- 	vim.o.shellredir = "2>&1 | %{ \"$_\" } | Out-File %s; exit $LastExitCode"
-- 	vim.o.shellpipe = "2>&1 | %{ \"$_\" } | Tee-Object %s"
-- 	vim.o.shellquote = ""
-- 	vim.o.shellxquote = ""
-- end
