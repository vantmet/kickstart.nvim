return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      disable_netrw = true,
      hijack_netrw = true,
      view = {
        mappings = {
          list = {
            { key = "v", cb = tree_cb "vsplit" },
          }
        }
      }
    }
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
  end,
}
