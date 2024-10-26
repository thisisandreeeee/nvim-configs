return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {
        options = {
          -- Enable/disable the close icon for buffers
          show_close_icon = false,
          show_buffer_close_icons = false,

          -- Customize how buffers are displayed
          diagnostics = "nvim_lsp",

          -- Ensure bufferline highlights the active buffer nicely
          always_show_bufferline = true,

          -- Show buffer numbers (optional)
          numbers = "ordinal",
        }
      }
      -- Buffer navigation keymaps
      vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<S-w>', '<cmd>bdelete<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<S-Tab>', ':b#<CR>', { noremap = true, silent = true })
    end
  },

}
