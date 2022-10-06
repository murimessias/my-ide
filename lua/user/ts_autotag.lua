local M = {}

M.config = function ()
  local status_ok, autotag = pcall(require, "nvim-ts-autotag")
  if not status_ok then
    return
  end

  return autotag.setup()
end

return M
