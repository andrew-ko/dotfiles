-- remove all trailing whitespaces
vim.api.nvim_create_autocmd("BufWritePre", {
  command = [[%s/\s\+$//e]]
})

-- map filetypes
local function set_ft (pattern, ft)
  vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = pattern,
    callback = function()
      vim.o.ft = ft
    end
  })
end

set_ft({ "Fastfile", "Pluginfile" }, "ruby")
set_ft({ ".env" }, "conf")

-- enable spell check for filetypes
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.wo.spell = true
  end
})

-- jump to the last known cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
  command = [[if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif]]
})

-- restore terminal cursor style on exit
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.o.guicursor = "a:hor20-blinkon0"
  end
})
