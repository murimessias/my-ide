local M = {}

M.config = function()
  local status_ok, tabnine = pcall(require, "cmp-tabnine")
  if not status_ok then
    return
  end

  return tabnine
end

return M
