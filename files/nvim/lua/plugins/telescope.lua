local M = {}

function M.start(use)
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      local dropdown_theme = require('telescope.themes').get_dropdown()
      local cursor_theme = require('telescope.themes').get_cursor()
      local ivy_theme = require('telescope.themes').get_ivy()
      vim.keymap.set('n', '<Leader>ff', function() require('telescope.builtin').find_files() end)
      vim.keymap.set('n', '<Leader>fg', function() require('telescope.builtin').git_files() end)
      vim.keymap.set('n', '<Leader>fa', function() require('telescope.builtin').live_grep(ivy_theme) end)
      vim.keymap.set('n', '<Leader>fs', function() require('telescope.builtin').live_grep(cursor_theme) end)
      vim.keymap.set('n', '<Leader>fd', function() require('telescope.builtin').resume() end)
      vim.keymap.set('n', '<Leader>fw', function() require('telescope.builtin').grep_string() end)
      vim.keymap.set('n', '<Leader>fb', function() require('telescope.builtin').buffers(dropdown_theme) end)
      vim.keymap.set('n', '<Leader>fr', function() require('telescope.builtin').lsp_references() end)
      vim.keymap.set('n', '<Leader>fq', function() require('telescope.builtin').lsp_dynamic_workspace_symbols() end)
      vim.keymap.set('n', '<Leader>fe', function() require('telescope.builtin').diagnostics() end)
      vim.keymap.set('n', '<Leader>ft', function() require('telescope.builtin').treesitter() end)

      local actions = require("telescope.actions")
      local action_layout = require("telescope.actions.layout")

      require('telescope').setup({
        defaults = {
          mappings = {
            n = {
              ["<C-[>"] = actions.close,
              ["<C-a>"] = action_layout.toggle_preview,
            },
            i = {
              ["<C-a>"] = action_layout.toggle_preview,
            }
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case", the default case_mode is "smart_case"
          }
        },
      })

      require('telescope').load_extension('fzf')
    end
  }
end

return M
