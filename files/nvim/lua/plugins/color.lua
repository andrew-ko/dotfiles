local M = {}

function M.start(use)

  --[[ Themes support treesitter:
    https://github.com/folke/tokyonight.nvim
    https://github.com/rebelot/kanagawa.nvim
    https://github.com/sainnhe/everforest
    https://github.com/sainnhe/gruvbox-material
    https://github.com/shaunsingh/nord.nvim
  --]]

  use {
    'folke/tokyonight.nvim',
    config = function()
      require("tokyonight").setup({
        style = "storm", -- "storm", "night", "moon", "day"
        transparent = false,
        -- hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead
        -- lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold                                                                                                  |
      })
      vim.cmd [[colorscheme tokyonight]]
    end
  }

  -- use {
  --   'rebelot/kanagawa.nvim',
  --   config = function()
  --     require('kanagawa').setup({})
  --     vim.cmd("colorscheme kanagawa")
  --   end
  -- }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'auto',
          icons_enabled = false,
          ignore_focus = { 'nerdtree' },
          globalstatus = false
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', { 'diff', colored = false }, 'diagnostics' },
          lualine_c = { { 'filename', path = 1 } },
          lualine_x = { 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        extensions = { 'nerdtree', 'fugitive' }
      })
    end
  }
end

return M
