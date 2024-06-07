vim.g.mapleader = " "

local keymap = vim.keymap

-- TODO Telescope bookmark(up/down)
-- TODO Telescope git-signs(up/down)

-- TODO: can treesitter help to move around the methods up / down? 
-- TODO: which plugin enables gd?

keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "quit all" })

-- Telescope quick-fick-list(up/down)
keymap.set("n", "<leader>c", ":copen<CR>", { desc = "open quickFix" })
keymap.set("n", "<leader>C", ":cclose<CR>", { desc = "close quickFix" })
keymap.set("n", "<leader>n", ":cn<CR>", { desc = "cnext" })
keymap.set("n", "<leader>p", ":cp<CR>", { desc = "cprev" })


-- buffer
keymap.set("n", "<leader>q", ":bdelete | bnext<CR>", { desc = "close buffer" }) -- quit buffer
keymap.set("n", "<leader>w", ":w<CR>", { desc = "save buffer" }) -- save buffer
keymap.set("n", "<leader>W", ":wa<CR>", { desc = "save all buffer" }) -- save all buffer

keymap.set("n", "(", ":bprevious<CR>", { desc = "previous buffer" })
keymap.set("n", ")", ":bnext<CR>", { desc = "next buffer" })

keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { desc = "go buffer 1" })
keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { desc = "go buffer 2" })
keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { desc = "go buffer 3" })
keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { desc = "go buffer 4" })
keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { desc = "go buffer 5" })

keymap.set("n", "<leader>m", ":MaximizerToggle<CR>", { desc = "max window" })

keymap.set("n", "<A-k>", ":resize +2<CR>", { desc = "<ALT-k> +2" })
keymap.set("n", "<A-j>", ":resize -2<CR>", { desc = "<ALT-j> -2" })
keymap.set("n", "<A-l>", ":vertical resize +2<CR>", { desc = "<ALT-l> +2" })
keymap.set("n", "<A-h>", ":vertical resize -2<CR>", { desc = "<ALT+h> -2" })


-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- telescope
vim.keymap.set('n', '<leader>ff', ":Telescope find_files<cr>", {desc = "FzF files"})
vim.keymap.set('n', '<leader>fo', ":Telescope oldfiles<cr>", {desc = "FzF old files"})
vim.keymap.set('n', '<leader>fb', ":Telescope buffers<cr>", {desc = "FzF buffers"})
vim.keymap.set('n', '<leader>fs', ":Telescope live_grep<cr>", {desc = "FzF strings"})
vim.keymap.set('n', '<leader>fc', ":Telescope grep_string<cr>", {desc = "FzF cursor strings"})

-- nvim-tree
vim.keymap.set('n', '<leader>e', ":NvimTreeOpen<CR>", {desc = "open nvim-tree"})
vim.keymap.set('n', '<leader>E', ":NvimTreeClose<CR>", {desc = "close nvim-tree"})
