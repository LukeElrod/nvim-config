require("config.lazy")

--disable netrrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.wo.number = true

-- Move line up (n)
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
-- Move line down (n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
-- Move line up (v)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
-- Move line down (v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
--tab to toggle nvim tree
vim.keymap.set("n", "<Tab>", ":NvimTreeToggle <CR>")

--saving
vim.keymap.set("n", "<F5>", ":w <CR>")
vim.keymap.set("n", "<F6>", ":wa <CR>")
vim.keymap.set("n", "<BS>", ":q <CR>")

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

--colorscheme
vim.cmd.colorscheme("cyberdream")

vim.opt.clipboard = 'unnamedplus'
