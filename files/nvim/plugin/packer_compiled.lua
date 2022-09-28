-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/andrewkovalenko/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/andrewkovalenko/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/andrewkovalenko/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/andrewkovalenko/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/andrewkovalenko/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1€4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0À\bset\vkeymap\bvim\vbuffer#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a]c\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a[c\tdiff\awo\bvim1\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\1À\1\0\1\tfull\2\15blame_line¾\4\1\1\t\0\31\0?6\1\0\0009\1\1\0019\1\2\0013\2\3\0\18\3\2\0'\5\4\0'\6\5\0003\a\6\0005\b\a\0B\3\5\1\18\3\2\0'\5\4\0'\6\b\0003\a\t\0005\b\n\0B\3\5\1\18\3\2\0005\5\v\0'\6\f\0'\a\r\0B\3\4\1\18\3\2\0005\5\14\0'\6\15\0'\a\16\0B\3\4\1\18\3\2\0'\5\4\0'\6\17\0009\a\18\1B\3\4\1\18\3\2\0'\5\4\0'\6\19\0009\a\20\1B\3\4\1\18\3\2\0'\5\4\0'\6\21\0009\a\22\1B\3\4\1\18\3\2\0'\5\4\0'\6\23\0009\a\24\1B\3\4\1\18\3\2\0'\5\4\0'\6\25\0003\a\26\0B\3\4\1\18\3\2\0'\5\4\0'\6\27\0009\a\28\1B\3\4\1\18\3\2\0'\5\4\0'\6\29\0009\a\30\1B\3\4\0012\0\0€K\0\1\0\19toggle_deleted\15<leader>td\30toggle_current_line_blame\15<leader>tb\0\15<leader>hb\17preview_hunk\15<leader>hp\17reset_buffer\15<leader>hR\20undo_stage_hunk\15<leader>hu\17stage_buffer\15<leader>hS\29:Gitsigns reset_hunk<CR>\15<leader>hr\1\3\0\0\6n\6v\29:Gitsigns stage_hunk<CR>\15<leader>hs\1\3\0\0\6n\6v\1\0\1\texpr\2\0\a[c\1\0\1\texpr\2\0\a]c\6n\0\rgitsigns\vloaded\fpackageP\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\1\0\0\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nÀ\3\0\0\6\0\25\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0005\5\f\0>\5\2\4=\4\r\0034\4\3\0005\5\14\0>\5\1\4=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\3=\3\22\0025\3\23\0=\3\24\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\rnerdtree\rfugitive\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\2\1\0\tdiff\fcolored\1\1\4\0\0\vbranch\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\17ignore_focus\1\2\0\0\rnerdtree\1\0\3\17globalstatus\1\18icons_enabled\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintî\a\1\2\t\0'\0¡\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\17\0006\a\0\0009\a\v\a9\a\f\a9\a\18\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\19\0006\a\0\0009\a\v\a9\a\f\a9\a\20\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\21\0006\a\0\0009\a\v\a9\a\f\a9\a\22\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\23\0006\a\0\0009\a\v\a9\a\f\a9\a\24\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\25\0006\a\0\0009\a\v\a9\a\f\a9\a\26\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\27\0003\a\28\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\29\0006\a\0\0009\a\v\a9\a\f\a9\a\30\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\31\0006\a\0\0009\a\v\a9\a\f\a9\a \a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6!\0006\a\0\0009\a\v\a9\a\f\a9\a\"\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6#\0006\a\0\0009\a\v\a9\a\f\a9\a$\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6%\0006\a\0\0009\a\v\a9\a\f\a9\a&\a\18\b\2\0B\3\5\1K\0\1\0\15formatting\r<space>f\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\6L\19implementation\agi\nhover\6K\r<space>d\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\1\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÊ\b\1\0\r\0?\0…\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0006\4\5\0009\4\n\0049\4\v\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\f\0006\4\5\0009\4\n\0049\4\r\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\14\0006\4\5\0009\4\n\0049\4\15\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\16\0006\4\5\0009\4\n\0049\4\15\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\17\0006\4\5\0009\4\n\0049\4\18\4B\0\4\0013\0\19\0006\1\0\0'\3\20\0B\1\2\0026\2\0\0'\4\21\0B\2\2\0029\2\22\0026\4\5\0009\4\23\0049\4\24\0049\4\25\4B\4\1\0A\2\0\0026\3\0\0'\5\26\0B\3\2\0029\3\27\0039\3\2\0035\5\28\0=\2\29\5=\0\30\0055\6.\0005\a \0005\b\31\0=\b!\a5\b#\0005\t\"\0=\t$\b=\b%\a5\b)\0006\t\5\0009\t&\t9\t'\t'\v(\0+\f\2\0B\t\3\2=\t*\b=\b+\a5\b,\0=\b-\a=\a/\6=\0060\5B\3\2\0016\3\0\0'\5\26\0B\3\2\0029\0031\0039\3\2\0035\0052\0=\2\29\5=\0\30\0059\0063\1'\b4\0B\6\2\2=\0065\5B\3\2\0016\3\0\0'\5\26\0B\3\2\0029\0036\0039\3\2\0035\0057\0=\2\29\5=\0\30\0055\6>\0005\a;\0006\b\0\0'\n8\0B\b\2\0029\b9\b9\b:\bB\b\1\2=\b:\a5\b<\0=\b=\a=\a9\6=\0060\5B\3\2\1K\0\1\0\1\0\0\rvalidate\1\0\1\venable\2\1\0\0\fschemas\tjson\16schemastore\1\0\0\vjsonls\rroot_dir\t.git\17root_pattern\1\0\0\relixirls\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\14on_attach\17capabilities\1\0\0\16sumneko_lua\14lspconfig\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\19lspconfig.util\0\15setloclist\r<space>q\14<leader>d\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\21ensure_installed\1\0\1\27automatic_installation\2\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nerdtree = {
    config = { "\27LJ\2\nä\4\0\0\6\0\16\0\"6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0005\5\b\0B\0\5\0016\0\0\0009\0\t\0009\0\n\0'\2\v\0005\3\f\0B\0\3\0016\0\0\0009\0\t\0009\0\n\0'\2\r\0005\3\14\0B\0\3\0016\0\0\0009\0\t\0009\0\n\0'\2\r\0005\3\15\0B\0\3\1K\0\1\0\1\0\1\fcommandµ\1if bufname('#') =~ 'NERD_tree_\\d\\+' && bufname('%') !~ 'NERD_tree_\\d\\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute \"normal! \\<C-W>w\" | execute 'buffer'.buf | endif\1\0\1\fcommandoif tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif\rBufEnter\1\0\1\fcommand\24NERDTree | wincmd p\rVimEnter\24nvim_create_autocmd\bapi\1\0\1\vsilent\2\24:NERDTreeToggle<CR>\21<leader><leader>\22:NERDTreeFind<CR>\n<C-\\>\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nÐ\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20€6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim\1\0\1\3\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\14\0\1\0X\1\15€6\1\1\0009\1\2\0019\1\3\1\6\1\4\0X\1\b€-\1\1\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\5\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\rcomplete\vprompt\fbuftype\abo\bvim\21select_next_item›\4\1\0\v\0#\0E6\0\0\0'\2\1\0B\0\2\2\v\0\0\0X\1\1€2\0>€3\1\2\0009\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\f\0009\6\t\0009\6\n\0069\6\v\6B\6\1\2=\6\r\5=\5\n\0049\5\14\0009\5\15\0059\5\16\0055\a\18\0003\b\17\0=\b\19\a9\b\14\0009\b\20\b)\nüÿB\b\2\2=\b\21\a9\b\14\0009\b\20\b)\n\4\0B\b\2\2=\b\22\a9\b\14\0009\b\23\bB\b\1\2=\b\24\a9\b\14\0009\b\25\bB\b\1\2=\b\26\a9\b\14\0009\b\27\b5\n\28\0B\b\2\2=\b\29\aB\5\2\2=\5\14\0049\5\t\0009\5\30\0054\a\4\0005\b\31\0>\b\1\a5\b \0>\b\2\a5\b!\0>\b\3\a4\b\3\0005\t\"\0>\t\1\bB\5\3\2=\5\30\4B\2\2\0012\0\0€K\0\1\0K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<Tab>\1\0\0\0\vinsert\vpreset\fmapping\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nº\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15find_files\22telescope.builtin\frequireC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14git_files\22telescope.builtin\frequireI\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\2À\14live_grep\22telescope.builtin\frequireI\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\1À\14live_grep\22telescope.builtin\frequire@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vresume\22telescope.builtin\frequireE\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16grep_string\22telescope.builtin\frequireG\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0À\fbuffers\22telescope.builtin\frequireH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19lsp_references\22telescope.builtin\frequireW\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\"lsp_dynamic_workspace_symbols\22telescope.builtin\frequireE\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16diagnostics\22telescope.builtin\frequireD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15treesitter\22telescope.builtin\frequireÌ\a\1\0\f\0004\0‚\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0029\1\3\1B\1\1\0026\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\0026\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\t\0003\a\n\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\v\0003\a\f\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\r\0003\a\14\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\15\0003\a\16\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\17\0003\a\18\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\19\0003\a\20\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\21\0003\a\22\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\23\0003\a\24\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\25\0003\a\26\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\27\0003\a\28\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\29\0003\a\30\0B\3\4\0016\3\0\0'\5\31\0B\3\2\0026\4\0\0'\6 \0B\4\2\0026\5\0\0'\a!\0B\5\2\0029\5\"\0055\a-\0005\b+\0005\t(\0005\n$\0009\v#\3=\v%\n9\v&\4=\v'\n=\n\b\t5\n)\0009\v&\4=\v'\n=\n*\t=\t,\b=\b.\a5\b0\0005\t/\0=\t1\b=\b2\aB\5\2\0016\5\0\0'\a!\0B\5\2\0029\0053\5'\a1\0B\5\2\0012\0\0€K\0\1\0\19load_extension\15extensions\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\0\n<C-a>\19toggle_preview\n<C-[>\1\0\0\nclose\nsetup\14telescope\29telescope.actions.layout\22telescope.actions\0\15<Leader>ft\0\15<Leader>fe\0\15<Leader>fq\0\15<Leader>fr\0\15<Leader>fb\0\15<Leader>fw\0\15<Leader>fd\0\15<Leader>fs\0\15<Leader>fa\0\15<Leader>fg\0\15<Leader>ff\6n\bset\vkeymap\bvim\fget_ivy\15get_cursor\17get_dropdown\21telescope.themes\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n‡\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\1\0\2\16transparent\1\nstyle\nstorm\nsetup\15tokyonight\frequire\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-buffergator"] = {
    config = { "\27LJ\2\nq\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\bmru\28buffergator_sort_regime\6B&buffergator_viewport_split_policy\6g\bvim\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-buffergator",
    url = "https://github.com/jeetsukumaran/vim-buffergator"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\nM\0\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\22<Plug>(EasyAlign)\aga\6v\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rails"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\n}\0\0\3\0\6\0\v6\0\0\0009\0\1\0004\1\3\0005\2\3\0>\2\1\1=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\2\0\0\6o\28startify_custom_indices\1\0\1\6,\19NERDTreeToggle\22startify_commands\6g\bvim\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\2\n×\1\0\0\5\0\f\0\0196\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0'\2\t\0'\3\n\0'\4\v\0B\0\4\1K\0\1\0#<Plug>(vsnip-select-text)<ESC>\n<C-s>\6v!<Plug>(vsnip-expand-or-jump)\n<C-l>\6i\bset\vkeymap\25~/.config/nvim/vsnip\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/Users/andrewkovalenko/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-rails
time([[Config for vim-rails]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-rails")
time([[Config for vim-rails]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n‡\1\0\0\3\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0'\2\6\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\bvim\1\0\2\16transparent\1\nstyle\nstorm\nsetup\15tokyonight\frequire\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nd\0\0\6\0\6\0\v6\0\0\0006\2\1\0009\2\2\0026\4\1\0009\4\3\0049\4\4\0049\4\5\4B\4\1\0A\2\0\0A\0\0\1K\0\1\0\27list_workspace_folders\bbuf\blsp\finspect\bvim\nprintî\a\1\2\t\0'\0¡\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\0015\2\5\0=\1\6\0026\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\n\0006\a\0\0009\a\v\a9\a\f\a9\a\r\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\14\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\16\0006\a\0\0009\a\v\a9\a\f\a9\a\15\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\17\0006\a\0\0009\a\v\a9\a\f\a9\a\18\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\19\0006\a\0\0009\a\v\a9\a\f\a9\a\20\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\21\0006\a\0\0009\a\v\a9\a\f\a9\a\22\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\23\0006\a\0\0009\a\v\a9\a\f\a9\a\24\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\25\0006\a\0\0009\a\v\a9\a\f\a9\a\26\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\27\0003\a\28\0\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\29\0006\a\0\0009\a\v\a9\a\f\a9\a\30\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6\31\0006\a\0\0009\a\v\a9\a\f\a9\a \a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6!\0006\a\0\0009\a\v\a9\a\f\a9\a\"\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6#\0006\a\0\0009\a\v\a9\a\f\a9\a$\a\18\b\2\0B\3\5\0016\3\0\0009\3\a\0039\3\b\3'\5\t\0'\6%\0006\a\0\0009\a\v\a9\a\f\a9\a&\a\18\b\2\0B\3\5\1K\0\1\0\15formatting\r<space>f\15references\agr\16code_action\14<space>ca\vrename\14<space>rn\20type_definition\r<space>D\0\14<space>wl\28remove_workspace_folder\14<space>wr\25add_workspace_folder\14<space>wa\19signature_help\6L\19implementation\agi\nhover\6K\r<space>d\15definition\agd\16declaration\bbuf\blsp\agD\6n\bset\vkeymap\vbuffer\1\0\1\vsilent\2\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimÊ\b\1\0\r\0?\0…\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0006\4\5\0009\4\n\0049\4\v\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\f\0006\4\5\0009\4\n\0049\4\r\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\14\0006\4\5\0009\4\n\0049\4\15\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\16\0006\4\5\0009\4\n\0049\4\15\4B\0\4\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\17\0006\4\5\0009\4\n\0049\4\18\4B\0\4\0013\0\19\0006\1\0\0'\3\20\0B\1\2\0026\2\0\0'\4\21\0B\2\2\0029\2\22\0026\4\5\0009\4\23\0049\4\24\0049\4\25\4B\4\1\0A\2\0\0026\3\0\0'\5\26\0B\3\2\0029\3\27\0039\3\2\0035\5\28\0=\2\29\5=\0\30\0055\6.\0005\a \0005\b\31\0=\b!\a5\b#\0005\t\"\0=\t$\b=\b%\a5\b)\0006\t\5\0009\t&\t9\t'\t'\v(\0+\f\2\0B\t\3\2=\t*\b=\b+\a5\b,\0=\b-\a=\a/\6=\0060\5B\3\2\0016\3\0\0'\5\26\0B\3\2\0029\0031\0039\3\2\0035\0052\0=\2\29\5=\0\30\0059\0063\1'\b4\0B\6\2\2=\0065\5B\3\2\0016\3\0\0'\5\26\0B\3\2\0029\0036\0039\3\2\0035\0057\0=\2\29\5=\0\30\0055\6>\0005\a;\0006\b\0\0'\n8\0B\b\2\0029\b9\b9\b:\bB\b\1\2=\b:\a5\b<\0=\b=\a=\a9\6=\0060\5B\3\2\1K\0\1\0\1\0\0\rvalidate\1\0\1\venable\2\1\0\0\fschemas\tjson\16schemastore\1\0\0\vjsonls\rroot_dir\t.git\17root_pattern\1\0\0\relixirls\rsettings\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\14on_attach\17capabilities\1\0\0\16sumneko_lua\14lspconfig\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\19lspconfig.util\0\15setloclist\r<space>q\14<leader>d\14goto_next\a]d\14goto_prev\a[d\15open_float\15diagnostic\r<space>e\6n\bset\vkeymap\bvim\21ensure_installed\1\0\1\27automatic_installation\2\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nÐ\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20€6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim\1\0\1\3\2\6\0\21-\1\0\0009\1\0\1B\1\1\2\14\0\1\0X\1\15€6\1\1\0009\1\2\0019\1\3\1\6\1\4\0X\1\b€-\1\1\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\5\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\rcomplete\vprompt\fbuftype\abo\bvim\21select_next_item›\4\1\0\v\0#\0E6\0\0\0'\2\1\0B\0\2\2\v\0\0\0X\1\1€2\0>€3\1\2\0009\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0045\5\f\0009\6\t\0009\6\n\0069\6\v\6B\6\1\2=\6\r\5=\5\n\0049\5\14\0009\5\15\0059\5\16\0055\a\18\0003\b\17\0=\b\19\a9\b\14\0009\b\20\b)\nüÿB\b\2\2=\b\21\a9\b\14\0009\b\20\b)\n\4\0B\b\2\2=\b\22\a9\b\14\0009\b\23\bB\b\1\2=\b\24\a9\b\14\0009\b\25\bB\b\1\2=\b\26\a9\b\14\0009\b\27\b5\n\28\0B\b\2\2=\b\29\aB\5\2\2=\5\14\0049\5\t\0009\5\30\0054\a\4\0005\b\31\0>\b\1\a5\b \0>\b\2\a5\b!\0>\b\3\a4\b\3\0005\t\"\0>\t\1\bB\5\3\2=\5\30\4B\2\2\0012\0\0€K\0\1\0K\0\1\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\n<Tab>\1\0\0\0\vinsert\vpreset\fmapping\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\0\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\nM\0\0\5\0\6\0\b6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\1K\0\1\0\22<Plug>(EasyAlign)\aga\6v\bset\vkeymap\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: vim-buffergator
time([[Config for vim-buffergator]], true)
try_loadstring("\27LJ\2\nq\0\0\2\0\6\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0K\0\1\0\bmru\28buffergator_sort_regime\6B&buffergator_viewport_split_policy\6g\bvim\0", "config", "vim-buffergator")
time([[Config for vim-buffergator]], false)
-- Config for: vim-vsnip
time([[Config for vim-vsnip]], true)
try_loadstring("\27LJ\2\n×\1\0\0\5\0\f\0\0196\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0B\0\4\0016\0\0\0009\0\4\0009\0\5\0'\2\t\0'\3\n\0'\4\v\0B\0\4\1K\0\1\0#<Plug>(vsnip-select-text)<ESC>\n<C-s>\6v!<Plug>(vsnip-expand-or-jump)\n<C-l>\6i\bset\vkeymap\25~/.config/nvim/vsnip\22vsnip_snippet_dir\6g\bvim\0", "config", "vim-vsnip")
time([[Config for vim-vsnip]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\n}\0\0\3\0\6\0\v6\0\0\0009\0\1\0004\1\3\0005\2\3\0>\2\1\1=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\2\0\0\6o\28startify_custom_indices\1\0\1\6,\19NERDTreeToggle\22startify_commands\6g\bvim\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nW\0\4\n\1\4\0\14\14\0\3\0X\4\1€4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0\18\b\2\0\18\t\3\0B\4\5\1K\0\1\0\0À\bset\vkeymap\bvim\vbuffer#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a]c\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2€'\0\3\0002\0\a€6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0€L\0\2\0L\0\2\0\1À\r<Ignore>\0\rschedule\a[c\tdiff\awo\bvim1\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\1À\1\0\1\tfull\2\15blame_line¾\4\1\1\t\0\31\0?6\1\0\0009\1\1\0019\1\2\0013\2\3\0\18\3\2\0'\5\4\0'\6\5\0003\a\6\0005\b\a\0B\3\5\1\18\3\2\0'\5\4\0'\6\b\0003\a\t\0005\b\n\0B\3\5\1\18\3\2\0005\5\v\0'\6\f\0'\a\r\0B\3\4\1\18\3\2\0005\5\14\0'\6\15\0'\a\16\0B\3\4\1\18\3\2\0'\5\4\0'\6\17\0009\a\18\1B\3\4\1\18\3\2\0'\5\4\0'\6\19\0009\a\20\1B\3\4\1\18\3\2\0'\5\4\0'\6\21\0009\a\22\1B\3\4\1\18\3\2\0'\5\4\0'\6\23\0009\a\24\1B\3\4\1\18\3\2\0'\5\4\0'\6\25\0003\a\26\0B\3\4\1\18\3\2\0'\5\4\0'\6\27\0009\a\28\1B\3\4\1\18\3\2\0'\5\4\0'\6\29\0009\a\30\1B\3\4\0012\0\0€K\0\1\0\19toggle_deleted\15<leader>td\30toggle_current_line_blame\15<leader>tb\0\15<leader>hb\17preview_hunk\15<leader>hp\17reset_buffer\15<leader>hR\20undo_stage_hunk\15<leader>hu\17stage_buffer\15<leader>hS\29:Gitsigns reset_hunk<CR>\15<leader>hr\1\3\0\0\6n\6v\29:Gitsigns stage_hunk<CR>\15<leader>hs\1\3\0\0\6n\6v\1\0\1\texpr\2\0\a[c\1\0\1\texpr\2\0\a]c\6n\0\rgitsigns\vloaded\fpackageP\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\14on_attach\1\0\0\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nÀ\3\0\0\6\0\25\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\v\0005\5\f\0>\5\2\4=\4\r\0034\4\3\0005\5\14\0>\5\1\4=\4\15\0035\4\16\0=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\3=\3\22\0025\3\23\0=\3\24\2B\0\2\1K\0\1\0\15extensions\1\3\0\0\rnerdtree\rfugitive\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\1\0\rfilename\tpath\3\1\14lualine_b\1\2\1\0\tdiff\fcolored\1\1\4\0\0\vbranch\0\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\17ignore_focus\1\2\0\0\rnerdtree\1\0\3\17globalstatus\1\18icons_enabled\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15find_files\22telescope.builtin\frequireC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14git_files\22telescope.builtin\frequireI\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\2À\14live_grep\22telescope.builtin\frequireI\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\1À\14live_grep\22telescope.builtin\frequire@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vresume\22telescope.builtin\frequireE\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16grep_string\22telescope.builtin\frequireG\0\0\3\1\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0-\2\0\0B\0\2\1K\0\1\0\0À\fbuffers\22telescope.builtin\frequireH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19lsp_references\22telescope.builtin\frequireW\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\"lsp_dynamic_workspace_symbols\22telescope.builtin\frequireE\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16diagnostics\22telescope.builtin\frequireD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15treesitter\22telescope.builtin\frequireÌ\a\1\0\f\0004\0‚\0016\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0026\1\0\0'\3\1\0B\1\2\0029\1\3\1B\1\1\0026\2\0\0'\4\1\0B\2\2\0029\2\4\2B\2\1\0026\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\t\0003\a\n\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\v\0003\a\f\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\r\0003\a\14\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\15\0003\a\16\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\17\0003\a\18\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\19\0003\a\20\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\21\0003\a\22\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\23\0003\a\24\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\25\0003\a\26\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\27\0003\a\28\0B\3\4\0016\3\5\0009\3\6\0039\3\a\3'\5\b\0'\6\29\0003\a\30\0B\3\4\0016\3\0\0'\5\31\0B\3\2\0026\4\0\0'\6 \0B\4\2\0026\5\0\0'\a!\0B\5\2\0029\5\"\0055\a-\0005\b+\0005\t(\0005\n$\0009\v#\3=\v%\n9\v&\4=\v'\n=\n\b\t5\n)\0009\v&\4=\v'\n=\n*\t=\t,\b=\b.\a5\b0\0005\t/\0=\t1\b=\b2\aB\5\2\0016\5\0\0'\a!\0B\5\2\0029\0053\5'\a1\0B\5\2\0012\0\0€K\0\1\0\19load_extension\15extensions\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\25override_file_sorter\2\28override_generic_sorter\2\nfuzzy\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\0\n<C-a>\19toggle_preview\n<C-[>\1\0\0\nclose\nsetup\14telescope\29telescope.actions.layout\22telescope.actions\0\15<Leader>ft\0\15<Leader>fe\0\15<Leader>fq\0\15<Leader>fr\0\15<Leader>fb\0\15<Leader>fw\0\15<Leader>fd\0\15<Leader>fs\0\15<Leader>fa\0\15<Leader>fg\0\15<Leader>ff\6n\bset\vkeymap\bvim\fget_ivy\15get_cursor\17get_dropdown\21telescope.themes\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nº\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\17auto_install\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
try_loadstring("\27LJ\2\nä\4\0\0\6\0\16\0\"6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\6\0'\4\a\0005\5\b\0B\0\5\0016\0\0\0009\0\t\0009\0\n\0'\2\v\0005\3\f\0B\0\3\0016\0\0\0009\0\t\0009\0\n\0'\2\r\0005\3\14\0B\0\3\0016\0\0\0009\0\t\0009\0\n\0'\2\r\0005\3\15\0B\0\3\1K\0\1\0\1\0\1\fcommandµ\1if bufname('#') =~ 'NERD_tree_\\d\\+' && bufname('%') !~ 'NERD_tree_\\d\\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute \"normal! \\<C-W>w\" | execute 'buffer'.buf | endif\1\0\1\fcommandoif tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif\rBufEnter\1\0\1\fcommand\24NERDTree | wincmd p\rVimEnter\24nvim_create_autocmd\bapi\1\0\1\vsilent\2\24:NERDTreeToggle<CR>\21<leader><leader>\22:NERDTreeFind<CR>\n<C-\\>\6n\bset\vkeymap\bvim\0", "config", "nerdtree")
time([[Config for nerdtree]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
