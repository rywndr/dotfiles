return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<C-g>", "<Cmd>Git<CR>")
	end,
}
