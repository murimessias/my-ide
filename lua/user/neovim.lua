local M = {}

M.config = function()
  lvim.format_on_save = false
  vim.opt.relativenumber = true
  vim.opt.termguicolors = true
end

return M
