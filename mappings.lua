-- 自定义mappings模块
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      -- ["<leader>h"] = "",
      -- ["<C-s>"] = ""
  }
}

M.general = {

  n = {
    ["<C-h>"] = { "5h", "quick left" },
    ["<C-l>"] = { "5l", "quick right" },
    ["<C-j>"] = { "5j", "quick down" },
    ["<C-k>"] = { "6k", "quick up" },
    ["="] = { ":res +5<CR>", "resize +" },
    ["-"] = { ":res -5<CR>", "resize -" },
    ["+"] = { ":vertical res +5<CR>", "vertical resize +" },
    ["_"] = { ":vertical res -5<CR>", "vertical resize -" },
  },

  i = {
    ["<C-v>"] = { "<C-r>+", "paste from clipboard" },
  },

  v = {
    ["<C-h>"] = { "5h", "quick left" },
    ["<C-l>"] = { "5l", "quick right" },
    ["<C-j>"] = { "5j", "quick down" },
    ["<C-k>"] = { "6k", "quick up" },
    ["<C-c>"] = { "\"+y", "copy to clipboard" },
  },
}

M.nvterm = {
  t = {
    -- toggle in terminal mode
    ["<A-I>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "   toggle floating term",
    },

    ["<A-H>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "   toggle horizontal term",
    },

    ["<A-V>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "   toggle vertical term",
    },
  },

  n = {
    -- toggle in normal mode
    ["<A-I>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "   toggle floating term",
    },

    ["<A-H>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "   toggle horizontal term",
    },

    ["<A-V>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "   toggle vertical term",
    },

    -- new

    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "   new horizontal term",
    },

    ["<leader>v"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "   new vertical term",
    },
  },
}

return M
