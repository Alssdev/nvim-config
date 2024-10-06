return {
  {
    "williamboman/mason.nvim",
    config = function ()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim"
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')

      -- init connection to lsp servers
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      lspconfig.clangd.setup({
        capabilities = capabilities
      })

      lspconfig.ast_grep.setup({
        capabilities = capabilities
      })

      lspconfig.astro.setup({
        capabilities = capabilities
      })

      lspconfig.marksman.setup({
        capabilities = capabilities
      })

      lspconfig.tailwindcss.setup({
        capabilities = capabilities
      })

      lspconfig.jdtls.setup({
        capabilities = capabilities
      })

      lspconfig.volar.setup({
        capabilities = capabilities
      })

      lspconfig.cmake.setup({
        capabilities = capabilities
      })

      lspconfig.mdx_analyzer.setup({
        capabilities = capabilities
      })

      -- shortcuts
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'H', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
    end
  }
}

