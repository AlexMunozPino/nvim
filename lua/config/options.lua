vim.opt.number = true -- Add line number
vim.opt.relativenumber = true -- Add RELATIVE line number

vim.opt.tabstop = 2 -- Width of a tab character
vim.opt.shiftwidth = 2 -- Number of spaces to use for each step of indentation
vim.opt.softtabstop = 2 -- Number of spaces a tab counts for when editing
vim.opt.expandtab = false -- Convert tabs to spaces

vim.g.mapleader = " " -- Change <Leader> to <Space> (' ')
vim.g.maplocalleader = "\\" -- Change <LocalLeader> to \ ('\')

vim.opt.termguicolors = true -- True color support for themes

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
