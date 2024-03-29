-- return {
-- 	{
-- 		"bluz71/vim-nightfly-guicolors",
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			-- load the colorscheme here
-- 			vim.cmd([[colorscheme nightfly]])
-- 		end,
-- 	},
-- }
-- return {
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		priority = 1000,
-- 		config = function()
-- 			-- load the colorscheme here
-- 			vim.cmd([[colorscheme tokyonight-night]])
-- 		end,
-- 	},
-- }
-- return {
-- 	{
-- 		"EdenEast/nightfox.nvim",
-- 		priority = 1000,
-- 		config = function()
-- 			-- load the colorscheme here
-- 			vim.cmd([[colorscheme duskfox]])
-- 		end,
-- 	},
-- }
return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
