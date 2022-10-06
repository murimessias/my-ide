local M = {
  require("user.keys").config(),
  require("user.keys").set_hop_keymaps(),
  require("user.neovim").config(),
  require("user.null_ls").config(),
  require("user.plugins").config(),
}

return M
