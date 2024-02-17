return {
	"ranelpadon/python-copy-reference.vim",
	config = function()
		vim.keymap.set("n", "<leader>cpp", ":PythonCopyReferenceDotted<CR>")
		vim.keymap.set("n", "<leader>cpi", ":PythonCopyReferenceImport<CR>")

		-- comment.setup({})
	end,
}
