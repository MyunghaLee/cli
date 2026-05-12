-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false

vim.opt.shell = "fish"

vim.o.clipboard = "unnamedplus" -- necessary for using OSC52 in remote machine
vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
  },
  paste = {
    ["+"] = function()
      return { vim.fn.getreg("+"), vim.fn.getregtype("+") }
    end,
    ["*"] = function()
      return { vim.fn.getreg("*"), vim.fn.getregtype("*") }
    end,
  },
}
