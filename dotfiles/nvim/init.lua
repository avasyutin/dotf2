vim.g.mapleader = ","

-- Bootstrap lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("plugins")
require("config.cmp")
require("config.snippets")

vim.cmd("source ~/.config/nvim/functions.vim")
vim.cmd("source ~/.config/nvim/commands.vim")
vim.cmd("source ~/.config/nvim/general.vim")
vim.cmd("source ~/.config/nvim/ui.vim")
vim.cmd("source ~/.config/nvim/plugins.vim")
vim.cmd("source ~/.config/nvim/filetypes.vim")
vim.cmd("source ~/.config/nvim/keys.vim")
