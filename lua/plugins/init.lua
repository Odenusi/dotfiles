return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- vim.keymap.set("n", "<leader>dbp", function()
    -- vim.keymap.set('n', '<Leader>dt', require("dap").toggle_breakpoint,{})
  -- end, { desc = "set breakpoint" }),

  vim.keymap.set("n", "<leader>dap", function()
    require("lazy").load({ plugins = { "nvim-dap" } })
  end, { desc = "Load nvim-dap" }),



  vim.keymap.set("n", "<leader>sm", function()
    require("lazy").load({ plugins = { "supermaven-nvim" } })
  end, { desc = "Load Supermaven" })
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
