return {
	"wfxr/minimap.vim",
	config = function()
		vim.g.minimap_width = 10
		vim.g.minimap_highlight_search = 1
		vim.g.minimap_auto_start = 1
		vim.g.minimap_git_colors = 1
		-- vim.g.minimap_auto_start_win_enter = 0
		-- require("minimap").setup()
		vim.keymap.set("n", "<leader>mm", "<cmd>MinimapToggle<cr>", { noremap = true, silent = true })
	end,
}
