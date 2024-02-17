return {
	"github/copilot.vim",
	config = function()
		vim.cmd([[imap <script><script><expr> <C-w> copilot#Accept("\<CR>")]])
		vim.g.copilot_no_tab_map = true
	end,
}
