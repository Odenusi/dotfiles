return {
  {
    "supermaven-inc/supermaven-nvim",
    lazy = true,
    config = function()
      -- Plugin configuration goes here
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-y>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        }
      })
    end,
  },
  -- Add more plugins as needed
}
