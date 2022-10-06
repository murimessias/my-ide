local M = {}

M.config = function()
  local formatters = require("lvim.lsp.null-ls.formatters")
  formatters.setup {
    { command = "prettierd" }
  }

  local linters = require("lvim.lsp.null-ls.linters")
  linters.setup {
    { command = "eslint" },
  }
  local code_actions = require("lvim.lsp.null-ls.code_actions")
  code_actions.setup {
    { command = "eslint" },
  }
end

return M
