-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
})

-- empty setup using defaults
require("nvim-tree").setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

-- use N to open nvim-tree
vim.cmd('noremap N :NvimTreeToggle<CR>') 

-- Copy to system clipboard
vim.opt.clipboard:append('unnamedplus')

-- enable show line numbers
vim.opt.number = true  

-- as definições de thanos
vim.cmd('source ~/.config/nvim/unicodefs.vim')

-- set tab to 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
