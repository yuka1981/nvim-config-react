-- Global settings
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

----------------------
-- Normal mode
----------------------
vim.keymap.set('n', '<leader>nh', ':nohl<CR>') -- Clear search highlights
vim.keymap.set('n', 'x', '"_x')                -- Do not yank with x
vim.keymap.set('n', 'd', '"_d')                -- Do not yank with d
vim.keymap.set('n', '+', '<C-a>')              -- Increament
vim.keymap.set('n', '-', '<C-x>')              -- Decrement
vim.keymap.set("n", "<C-d>", "<C-d>zz")        -- Scoll up and center the cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")        -- Scoll down and center the cursor
vim.keymap.set('n', '<leader>ga', 'gg<S-v>G')  -- Select all
-- vim.keymap.set('n', 'dw', 'vb"_d')             -- Delete a word backwords
-- vim.keymap.set('n', '<C-a>', 'gg<S-v>G')       -- Select all

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=")     -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Tab management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- New tab
-- vim.keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window
-- vim.keymap.set('n', '<leader>ss', ':split<Return><C-w>w', { silent = true })
-- vim.keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })

-- Resize window
-- vim.keymap.set('n', '<C-w><left>', '<C-w><')
-- vim.keymap.set('n', '<C-w><right>', '<C-w>>')
-- vim.keymap.set('n', '<C-w><up>', '<C-w>>+')
-- vim.keymap.set('n', '<C-w><down>', '<C-w>-')

----------------------
-- Insert mode
----------------------

vim.keymap.set("i", "jk", "<ESC>") -- use jk to exit insert mode

----------------------
-- Visual mode
----------------------

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("i", "jk", "<ESC>") -- Use jk to exit insert mode

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

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- find files within current working directory, respects .gitignore
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")   -- find string in current working directory as you type
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- list open buffers in current neovim instance
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")   -- list available help tags

-- git conflict choose
vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
