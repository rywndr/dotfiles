-- enable line numbers
vim.opt.number = true

-- enable relative llne numbers
vim.opt.relativenumber = true

-- enable mouse support
vim.opt.mouse = "a"

-- set the cursor to a blinking block (old school)
vim.opt.guicursor = ""

-- disable mode display
vim.opt.showmode = false

-- highlight the current line
vim.opt.cursorline = true

-- set the tab size to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- ignore case when searching
vim.opt.ignorecase = true

-- enable case sensitive search when a capital letter is used
vim.opt.smartcase = true

-- enable smart indenting and auto indenting
vim.opt.smartindent = true
vim.o.autoindent = true

-- enable incremental search (search as you type)
vim.opt.incsearch = true

-- enable terminal colors
vim.opt.termguicolors = true

-- set the number of lines to keep above and below the cursor when scrolling
vim.opt.scrolloff = 8

-- enable editor window to display visual signs (like error, markers, and warnings)
vim.opt.signcolumn = "yes"

-- enable nvim to treat @ as a valid character in filenames, only with gf
vim.opt.isfname:append("@-@")

-- set the update time for CursorHold events
vim.opt.updatetime = 50

-- set a color at col 80 (helps with more readable, maintainable code, etc, also looks cool)
vim.opt.colorcolumn = "80"

-- disable swap and backup files (we have git for that)
vim.opt.swapfile = false
vim.opt.backup = false

-- highlight text when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
