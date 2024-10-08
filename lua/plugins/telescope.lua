return {
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<space>ff', builtin.find_files, {})
      vim.keymap.set('n', '<space>fb', builtin.buffers, {})
      vim.keymap.set('n', '<space>fg', builtin.live_grep, {})
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function ()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}

