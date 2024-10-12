return {
  {
    "mfussenegger/nvim-dap",
    lazy = true,
    dependencies = {
    'rcarriga/nvim-dap-ui',
    'mfussenegger/nvim-dap-python',
    'nvim-neotest/nvim-nio'
    },
    config = function()
      -- Plugin configuration goes here
      local dap = require("dap")
      local dapui = require("dapui")
      -- local dappython = require("dap-python")

      require("dap-python").setup("/home/od/.virtualenvs/debugpy/bin/python3")
      require("dapui").setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint,{ desc = "toggle breakpoint" })
      vim.keymap.set('n', '<Leader>dc',dap.continue,{ desc = "debug continue" })
    end,
  },
  -- Add more plugins as needed
}
