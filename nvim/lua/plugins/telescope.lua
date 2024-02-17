return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")
		-- vim.keymap.set('n', '<leader>rf', function()builtin.find_files("-j1")end)
		vim.keymap.set("n", "<leader>rf", function()
			builtin.find_files({ additional_args = { "-j1" } })
		end)
		-- vim.keymap.set('n', '<leader>rf', require("telescope.builtin").live_grep({ additional_args = { "-j1" }}), {})
		-- vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
		-- vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
		vim.keymap.set("n", "<leader>ff", function()
			builtin.live_grep({ additional_args = { "-j1" } })
		end)
		vim.keymap.set("n", "<leader>fc", function()
			builtin.grep_string({ additional_args = { "-j1" } })
		end)

		--vim.keymap.set('n', '<leader>ps', function ()
		--builtin.grep_string({ search = vim.fn.input("Grep > ") });
		--end)
		--
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-n>"] = actions.cycle_history_next,
						["<C-p>"] = actions.cycle_history_prev,

						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,

						["<C-u>"] = actions.preview_scrolling_up,
						["<C-d>"] = actions.preview_scrolling_down,

						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			extensions = {
				project = {
					base_dirs = {
						"~/dev/src",
						{ "~/dev/src2" },
						{ "~/dev/src3", max_depth = 4 },
						{ path = "~/dev/src4" },
						{ path = "~/dev/src5", max_depth = 2 },
					},
					hidden_files = true, -- default: false
					theme = "dropdown",
					order_by = "asc",
					search_by = "title",
					sync_with_nvim_tree = true, -- default false
				},
			},
		})
	end,
}
