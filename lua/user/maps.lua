local keymap = vim.keymap
-- Global settings
vim.g.mapleader = " "

-- Clear search highlights
keymap.set('n', '<leader>nh', ':nohl<CR>')

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increament/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Delete a word backwords
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window
keymap.set('n', '<leader>ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
-- keymap.set('n', '<Space>', '<C-w>w')
-- keymap.set('', 's<left>', '<C-w>h')
-- keymap.set('', 's<up>', '<C-w>k')
-- keymap.set('', 's<down>', '<C-w>j')
-- keymap.set('', 's<right>', '<C-w>l')
-- keymap.set('', 'sh', '<C-w>h')
-- keymap.set('', 'sk', '<C-w>k')
-- keymap.set('', 'sj', '<C-w>j')
-- keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
