vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
  function(use)
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-repeat'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-unimpaired'

    use {
      'preservim/nerdtree',
      config = function()
        vim.keymap.set('n', '<C-\\>', ':NERDTreeFind<CR>')
        vim.keymap.set('n', '<leader><leader>', ':NERDTreeToggle<CR>', { silent = true })
        -- Start NERDTree and put the cursor back in the file window
        vim.api.nvim_create_autocmd("VimEnter", { command = [[NERDTree | wincmd p]] })
        -- Exit Vim if NERDTree is the only window remaining in the only tab.
        vim.api.nvim_create_autocmd("BufEnter",
          {
            command =
            [[if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif]]
          })
        -- If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
        vim.api.nvim_create_autocmd("BufEnter",
          {
            command =
            [[if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif]]
          })
        -- Open the existing NERDTree on each new tab.
        -- vim.api.nvim_create_autocmd("BufWinEnter", { command = [[if getcmdwintype() == '' | silent NERDTreeMirror | endif]] })
        vim.g.NERDTreeShowHidden = 1
      end
    }

    use {
      'jeetsukumaran/vim-buffergator',
      config = function()
        vim.g.buffergator_viewport_split_policy = "B"
        vim.g.buffergator_sort_regime = "mru"
      end
    }

    use {
      'junegunn/vim-easy-align',
      config = function()
        vim.keymap.set('v', 'ga', '<Plug>(EasyAlign)')
      end
    }

    use {
      'mhinz/vim-startify',
      config = function()
        vim.g.startify_commands = { { [','] = 'NERDTreeToggle' } }
        vim.g.startify_custom_indices = { 'o' }
        vim.g.startify_change_to_vcs_root = 1
      end
    }

    use {
      'hrsh7th/vim-vsnip',
      config = function()
        vim.g.vsnip_snippet_dir = '~/.config/nvim/vsnip'
        vim.keymap.set('i', '<C-l>', '<Plug>(vsnip-expand-or-jump)')
        vim.keymap.set('v', '<C-s>', '<Plug>(vsnip-select-text)<ESC>')
      end
    }

    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }

    use {
      'iamcco/markdown-preview.nvim',
      ft = { 'markdown' },
      run = function() vim.fn["mkdp#util#install"]() end,
    }

    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require('nvim-treesitter.configs').setup({
          auto_install = true,
          highlight = {
            enable = true,
          },
          incremental_selection = {
            enable = true,
          },
          indent = {
            enable = true,
          },
        })
      end
    }

    use {
      'windwp/nvim-autopairs',
      config = function()
        require("nvim-autopairs").setup({})
      end
    }

    use {
      'tpope/vim-rails',
      config = function()
      end
    }

    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup({
          on_attach = function(bufnr)
            local gs = package.loaded.gitsigns

            local function map(mode, l, r, opts)
              opts = opts or {}
              opts.buffer = bufnr
              vim.keymap.set(mode, l, r, opts)
            end

            map('n', ']c', function()
              if vim.wo.diff then return ']c' end
              vim.schedule(function() gs.next_hunk() end)
              return '<Ignore>'
            end, { expr = true })

            map('n', '[c', function()
              if vim.wo.diff then return '[c' end
              vim.schedule(function() gs.prev_hunk() end)
              return '<Ignore>'
            end, { expr = true })

            map({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>')
            map({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>')
            map('n', '<leader>hS', gs.stage_buffer)
            map('n', '<leader>hu', gs.undo_stage_hunk)
            map('n', '<leader>hR', gs.reset_buffer)
            map('n', '<leader>hp', gs.preview_hunk)
            map('n', '<leader>hb', function() gs.blame_line { full = true } end)
            map('n', '<leader>tb', gs.toggle_current_line_blame)
            map('n', '<leader>td', gs.toggle_deleted)
          end
        })
      end
    }

    -- use {
    --   'github/copilot.vim',
    --   config = function()
    --     -- imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
    --     -- vim.keymap.set('i', '<C-l>', 'copilot#Accept("<CR>"')
    --
    --     -- let g:copilot_no_tab_map = v:true
    --     -- vim.g.copilot_no_tab_map = true
    --
    --     -- highlight CopilotSuggestion guifg=#555555 ctermfg=8
    --   end
    -- }

    require('plugins/color').start(use)
    require('plugins/lsp').start(use)
    require('plugins/telescope').start(use)
  end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
