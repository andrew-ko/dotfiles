-- disable space for n & v modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- disable search matches highlighting
vim.keymap.set('n', '//', ':nohlsearch<CR>', { silent = true })

-- map ctrl-movement keys to window switching
vim.keymap.set('n', '<C-k>', '<C-w><Up>')
vim.keymap.set('n', '<C-j>', '<C-w><Down>')
vim.keymap.set('n', '<C-l>', '<C-w><Right>')
vim.keymap.set('n', '<C-h>', '<C-w><Left>')

-- use system clipboard to copy/paste
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>p', '"+p')

-- word upper/lower
vim.keymap.set('n', '<leader>u', 'mQviwU`Q')
vim.keymap.set('n', '<leader>l', 'mQviwu`Q')

-- " Append semicolon
vim.keymap.set('n', ';', 'A;<ESC>')

-- sort selected list alphabetically
vim.keymap.set('v', '<leader>s', ':sort<CR>')

-- file save alternative
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- closes current window, unless it is the last one
vim.keymap.set('n', '<leader>c', ':close<CR>')

-- repeat last colon command (rd = re-do)
vim.keymap.set('n', '<leader>rd', ':<Up><CR>')

-- save without formatting
vim.keymap.set('n', '<leader>ew', ':noa w<CR>')

-- git
vim.keymap.set('n', '<leader>st', ':Git<ESC>')
vim.keymap.set('n', '<leader>sb', ':Git blame<ESC>')

vim.keymap.set('n', '<space>h', ':diffget //2<CR>')
vim.keymap.set('n', '<space>l', ':diffget //3<CR>')
vim.keymap.set('n', '<space>w', ':Gwrite<CR>')
vim.keymap.set('n', '<space>o', ':only<CR>')
vim.keymap.set('n', '<space>gd', ':Gdiffsplit!<CR>')
vim.keymap.set('n', '<space>gu', ':diffupdate<CR>')
vim.keymap.set('n', '<space>grs', ':Git reset --soft HEAD~1<CR>')

-- packer sync
vim.keymap.set('n', '<space>ps', ':PackerSync<CR>')
vim.keymap.set('n', '<space>pc', ':PackerClean<CR>')

