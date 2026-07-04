return {
    "mfussenegger/nvim-lint",
    "rshkarin/mason-nvim-lint",
    config = function ()
    	require("mason-nvim-lint").setup({
	ensure_installed = {'prettier'},
	ignore_install = {''},
	})
    end
}
