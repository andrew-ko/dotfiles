vim.o.expandtab = true                      -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>
vim.o.foldenable = false                    -- All folds are open
vim.o.history = 500                         -- Number of lines that are remembered
vim.o.ignorecase = true                     -- Ignore case in search patterns
vim.o.lazyredraw = true                     -- When this option is set, the screen will not be redrawn while executing macros, registers and other commands that have not been typed
vim.o.mouse = "a"                           -- Enable mouse support ('a' - for all 4 modes)
vim.o.number = true                         -- Precede each line with its line number
vim.o.shiftwidth = 2                        -- Number of spaces to use for indent and unindent
vim.o.scrolloff = 1                         -- Minimal number of screen lines to keep above and below the cursor
vim.o.sidescrolloff = 5                     -- The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
-- vim.o.signcolumn = "number"                 -- Display signs in the 'number' column
vim.o.signcolumn = "yes"                    -- Always display signcolumn
vim.o.smartcase = true                      -- Override the 'ignorecase' option if the search pattern contains upper case characters
vim.o.softtabstop = 2                       -- Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
vim.o.swapfile = false                      -- Don't create a swapfile for a new buffer
vim.o.tabstop = 4                           -- Number of spaces that a <Tab> in the file counts for
vim.o.termguicolors = true                  -- 24-bit color
vim.o.undofile = true                       -- Persist undo
vim.o.visualbell = true                     -- Use visual bell instead of beeping
vim.o.wrap = false                          -- Lines will not wrap and only part of long lines will be displayed.
vim.o.writebackup = false                   -- Don't make a backup before overwriting a file
vim.o.completeopt = "menu,menuone,noselect" -- Options for insert mode completion
vim.opt.shortmess:append('c')               -- Don't pass messages to ins-completion-menu (set shortmess+=c)
vim.opt.diffopt:append('vertical')          -- Start diff mode with vertical splits

vim.o.autoread = true                       -- Detect when a file is changed
vim.o.backup = false                        -- Don't make a backup before overwriting a file
vim.o.hidden = true                         -- When off a buffer is unloaded (including loss of undo information)
vim.o.hlsearch = true                       -- When there is a previous search pattern, highlight all its matches
vim.o.laststatus = 2                        -- Last window will have a status line ('2' - always)
vim.o.showcmd = true                        -- Show (partial, incomplete) command in the last line of the screen
vim.o.smarttab = true                       -- When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'. 'tabstop' or 'softtabstop' is used in other places.
vim.o.wildmenu = true                       -- When 'wildmenu' is on, command-line completion operates in an enhanced mode

-- set map leader
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- python path
vim.g.python_host_prog = '~/.asdf/shims/python2'
vim.g.python3_host_prog = '~/.asdf/shims/python'
