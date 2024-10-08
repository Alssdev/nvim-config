return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local config = require('nvim-treesitter.configs')
    config.setup({
      ensure_installed = {
        'lua',
        'c',
        'cmake',
        'javascript',
        'java',
        'typescript',
        'csv',
        'dockerfile',
        'gitignore',
        'html',
        'java',
        'latex',
        'make',
        'astro',
        'markdown',
        'vue',
        'css',
        'rust'
      },
      highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },
      indent = { enable = true },
    })
  end
}

