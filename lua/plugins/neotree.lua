return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    vim.fn.sign_define("DiagnosticSignError",
      {text = "", texthl = "DiagnosticSignError"})
    vim.fn.sign_define("DiagnosticSignWarn",
      {text = " ", texthl = "DiagnosticSignWarn"})
    vim.fn.sign_define("DiagnosticSignInfo",
      {text = " ", texthl = "DiagnosticSignInfo"})
    vim.fn.sign_define("DiagnosticSignHint",
      {text = "󰌵", texthl = "DiagnosticSignHint"})
    vim.keymap.set('n', '<space>n', ':Neotree filesystem reveal left<CR>', {})

    require('neo-tree').setup({
      close_if_last_window = true,
      window = {
        width = 30
      },
      filesystem = {
       follow_current_file = {
          enable = true,
          leave_dirs_open = false
        },
        group_empty_dirs = true,
        use_libuv_file_watcher = true
      }
    })
  end
}

