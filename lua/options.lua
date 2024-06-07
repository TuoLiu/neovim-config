local o = vim.opt

o.number = true -- show line numbers

o.shiftwidth = 2 -- 2 spaces for indent width
o.expandtab = true -- expand tab to indent width
o.autoindent = true -- copy indent from current line when starting new one

o.wrap = false  -- disable line wrapping

o.cursorline = true -- highlight the current cursor line

o.termguicolors = true
o.signcolumn = "yes"

o.clipboard:append("unnamedplus") -- use system clipboard as default register

o.swapfile = false -- turn off swapfile

-- split windows
o.splitright = true -- split vertical window to the right
o.splitbelow = true -- split horizontal window to the bottom
