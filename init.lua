vim.g.mapleader = " "
vim.keymap.set("i","kj","<Esc>",{noremap = true})

vim.opt.tabstop = 4      -- A tab visually takes up 4 spaces
vim.opt.shiftwidth = 4   -- Indent operations move text by 4 spaces
vim.opt.softtabstop = 4  -- Editing spaces behaves like a 4-space tab
vim.opt.expandtab = false -- Transform literal tabs into spaces


require("blanka")

require("config.lazy")

vim.cmd[[colorscheme tokyonight-night]]

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
