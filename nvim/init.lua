local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"--branch=stable",
	lazyrepo,
	lazypath,
    })
    if vim.v.shell_error ~= 0 then
	vim.api.nvim_echo({
	    { "Error cloning lazy.nvim: " .. out, "ErrorMsg" }
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.lazyvim_check_order = false

require("lazy").setup("plugins")

require("set")
require("remap")
