-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<C-n>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  init = function()
    vim.cmd 'Neotree toggle'
  end,
  opts = {
    close_if_last_window = true,
    filesystem = {
      use_libuv_file_watcher = true,
      hijack_netrw_behavior = 'open_default',
      window = {
        mappings = {
          ['<C-n>'] = 'close_window',
        },
      },
      follow_current_file = {
        enabled = true,
      },
    },
  },
}
