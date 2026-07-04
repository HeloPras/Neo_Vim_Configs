return{
	"mason-org/mason-lspconfig.nvim",
	config = function ()
		require("mason-lspconfig").setup {
			ensure_installed = { "lua_ls", "rust_analyzer", "clangd","pyright","ts_ls"},
		}
		end,
}
