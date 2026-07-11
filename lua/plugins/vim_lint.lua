return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    -- Define linters by filetype
    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      python = { "pylint" },
    }
    -- Run linting on save and enter
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}

