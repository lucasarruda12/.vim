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

local opts = {
  defaults = {
    lazy = false,
  }
}

require("lazy").setup('plugins', {})

-- use N to open nvim-tree
vim.cmd('noremap N :NvimTreeToggle<CR>') 

-- Copy to system clipboard
vim.opt.clipboard:append('unnamedplus')

-- Set up spellchecking in portuguese
vim.opt.spell = true
vim.opt.spelllang = "pt_br"
vim.opt.spellcapcheck = ""

-- start clangd lsp


-- show line numbers
vim.opt.number = true  

-- unicodefs
vim.cmd('source ~/.config/nvim/unicodefs.vim')

-- my own defs
vim.cmd('source ~/.config/nvim/myowndefs.vim')

-- set tab to 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
