local M = {}


M.config = function()
 local status_ok, todo = pcall(require, "todo-comments")
  if not status_ok then
    return
  end

  return todo
end

return M
