return {
  'lewis6991/gitsigns.nvim',
  config = function ()
    require('gitsigns').setup({
    })

    local gs = package.loaded.gitsigns

    vim.keymap.set('n', '<space>hp', gs.preview_hunk)
    vim.keymap.set('n', '<space>hr', gs.reset_hunk)
  end
}

