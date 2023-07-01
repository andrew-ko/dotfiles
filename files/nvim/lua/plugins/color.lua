local M = {}

function M.start(use)
  use {
    'folke/tokyonight.nvim',
    config = function()
      require("tokyonight").setup({
        style = "storm",     -- "storm", "night", "moon", "day"
        transparent = false,
        lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold                                                                                                  |
      })
      vim.cmd [[colorscheme tokyonight]]
    end
  }

  -- use {
  --   'shaunsingh/nord.nvim',
  --   config = function()
  --     vim.g.nord_italic = false
  --     -- vim.g.nord_bold = false
  --     require('nord').set()
  --     vim.cmd [[colorscheme nord]]
  --   end
  -- }

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
