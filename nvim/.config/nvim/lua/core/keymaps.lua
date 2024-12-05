-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- use nerd font
vim.g.have_nerd_font = true

-- disable arrow keys
vim.keymap.set("n", "<left>", '<cmd>echo "use h doofus"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l doofuse"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k doofus"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j doofus"<CR>')

-- make windows switching easy
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- open netrw explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- remove highlighting after search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- open diagnostic list
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- bind escape to Ctrl-c for easy use when in vertical insert moded
vim.keymap.set("i", "<C-c>", "<Esc>")

-- paste without setting the register to the previous yank
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete without setting the register to the deleted text
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

-- select all
vim.keymap.set("n", "<C-a>", "<cmd>normal! ggVG<CR>")

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank to system clipboard using leader y
vim.keymap.set("n", "<leader>y", '"+yy')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- paste from system clipboard using leader p
vim.keymap.set("n", "<leader>P", '"+P')

-- move lines below to current line without moving the cursor to the end of the line
vim.keymap.set("n", "J", "mzJ`z")

-- keep the cursor center when scrolling half a page up or down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep the cursor center when moving to the next or previous search result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- nifty lil trick from primeagen to select the word under the cursor to replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- also nifty way to make a file executable by runnning chhhhmoddd
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- stay in indent mode when indenting lines
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
