return {
	"declancm/maximize.nvim",
	config = function()
		require("maximize").setup()
		vim.keymap.set("n", "<Leader>z", "<Cmd>lua require('maximize').toggle()<CR>")
	end,
}
