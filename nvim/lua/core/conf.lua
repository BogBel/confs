vim.g.syntax = on
vim.opt.swapfile = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.g.mapleader = " "

vim.g.indentLine_setConceal = 0
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.numberwidth = 4

vim.opt.autowriteall = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.encoding = "UTF-8"
vim.cmd([[
    :set clipboard+=unnamedplus
]])
vim.opt.colorcolumn = "79"
vim.opt.scrolloff = 8
-- vim.cmd [[
--
-- :autocmd BufEnter *.rb colorscheme Tomorrow
-- :autocmd BufEnter * colorscheme default
-- ]]
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>n", ":Explore<CR>")
vim.cmd([[
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END
]])
