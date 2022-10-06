local M = {}

M.config = function()
  -- mappings
  lvim.leader = "space"
  -- insert mode
  lvim.keys.insert_mode[",,"] = "<ESC><S-a>,<ESC>"
  lvim.keys.insert_mode[";;"] = "<ESC><S-a>;<ESC>"
  -- normal mode
  lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
  lvim.keys.normal_mode["]d"] = "<cmd>lua vim.diagnostic.goto_next()<CR>"
  lvim.keys.normal_mode["[d"] = "<cmd>lua vim.diagnostic.goto_prev()<CR>"
  lvim.keys.normal_mode["<S-x>"] = "<Cmd>BufferKill<CR>"
  lvim.keys.normal_mode["<S-l>"] = "<Cmd>BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-h>"] = "<Cmd>BufferLineCyclePrev<CR>"
  lvim.keys.normal_mode["[b"] = "<Cmd>BufferLineMoveNext<CR>"
  lvim.keys.normal_mode["]b"] = "<Cmd>BufferLineMovePrev<CR>"
  -- which keys
  lvim.builtin.which_key.mappings.l.name = " LSP"
  lvim.builtin.which_key.mappings["h"] = { "<cmd>nohlsearch<CR>", " No Highlight" }
  lvim.builtin.which_key.mappings.L.name = " LunarVim"
  lvim.builtin.which_key.mappings.p.name = " Packer"
  lvim.builtin.which_key.mappings.g.name = " Git"
  lvim.builtin.which_key.mappings.s.name = " Search"
  lvim.builtin.which_key.mappings["q"] = " Quit"
  lvim.builtin.which_key.mappings["w"] = { "<cmd>w!<CR>", " Save" }
  lvim.builtin.which_key.mappings[";"] = { "<cmd>Alpha<CR>", "舘Dashboard" }
  lvim.builtin.which_key.mappings["f"] = {
    require("lvim.core.telescope.custom-finders").find_project_files,
    " Find File",
  }
  lvim.builtin.which_key.mappings["R"] = {
    name = " Replace",
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Current Buffer" },
    p = { "<cmd>lua require('spectre').open()<cr>", "Project" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  }
end

M.set_hop_keymaps = function()
  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap("n", "s", ":HopChar2MW<cr>", opts)
  vim.api.nvim_set_keymap("n", "S", ":HopWordMW<cr>", opts)
  vim.api.nvim_set_keymap(
    "n",
    "f",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
    ,
    {}
  )
  vim.api.nvim_set_keymap(
    "n",
    "F",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
    ,
    {}
  )
  vim.api.nvim_set_keymap(
    "o",
    "f",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
    ,
    {}
  )
  vim.api.nvim_set_keymap(
    "o",
    "F",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
    ,
    {}
  )
  vim.api.nvim_set_keymap(
    "",
    "t",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>"
    ,
    {}
  )
  vim.api.nvim_set_keymap(
    "",
    "T",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = -1 })<cr>"
    ,
    {}
  )
end

return M
