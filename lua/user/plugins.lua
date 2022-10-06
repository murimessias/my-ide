local M = {}

M.config = function()
  lvim.plugins = {
    -- Themes
    { "morhetz/gruvbox" },
    { "ayu-theme/ayu-vim" },
    { "arcticicestudio/nord-vim" },
    { "jacoborus/tender.vim" },
    -- Colorschemes
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.colorizer").config()
      end
    },
    -- General
    { "styled-components/vim-styled-components" },
    {
      "folke/todo-comments.nvim",
      config = function()
        require("user.todo_comments").config()
      end,
      event = "BufRead",
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      setup = function()
        vim.g.indent_blankline_char = "▏"
      end,
      config = function()
        require("user.indent_blankline").config()
      end,
      event = "BufRead",
    },
    { "tpope/vim-repeat" },
    -- LSP Enhancements
    {
      "tzachar/cmp-tabnine",
      config = function()
        require("user.tabnine").config()
      end,
      run = "./install.sh",
      requires = "hrsh7th/nvim-cmp",
      event = "InsertEnter",
    },
    -- Navigations
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("user.hop").config()
      end,
    },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      config = function()
        require("user.spectre").config()
      end,
    },
    -- Treesitter
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("user.ts_autotag").config()
      end,
    },
  }
end

return M
