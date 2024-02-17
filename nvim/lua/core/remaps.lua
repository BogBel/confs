vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", opts)
vim.keymap.set("n", "<leader>n", ":Explore<CR>", opts)

local opts = { noremap = true, silent = true }
-- scroll with staying in center screen
vim.cmd([[
:nnoremap J jzz
:nnoremap K kzz
:nnoremap <Leader>q :Bdelete<CR>

:nnoremap yy ^y$
:nnoremap YY yy
" :nnoremap S <Nop>
" :nnoremap s <Nop>
]])
-- vim.keymap.set('n', 'J', 'jzz', opts)
-- vim.keymap.set('n', 'K', 'kzz', opts)
-- moving block of selections around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- jumping with ctrl D stay the cursor at center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- searching keep cursor in the middle as well
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- vim.keymap.set("x", "<leader>p", "\"_dP")
-- vim.keymap.set("x", "<leader>p", "\"_dP")

-- pasting with leader p does not overwrite register
-- vim.keymap.set("x", "p", '"_dP', opts)
-- vim.keymap.set('x', '<leader>p', "\"_dP", opts)
-- vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("x", "p", '"_dP')
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("i", "<C-c>", "<Esc>", opts)
vim.keymap.set("i", "jk", "<Esc>", opts)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", opts)
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", opts)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", opts)
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", opts)
-- splits
vim.keymap.set("n", "<leader>vv", "<c-w>v", opts) -- vertical split
vim.keymap.set("n", "<leader>sh", "<c-w>s", opts) -- h split
vim.keymap.set("n", "<leader>se", "<c-w>=", opts) -- making splits equal
vim.keymap.set("n", "<leader>xx", ":close<cr>", opts) -- close split

vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts) -- next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts) -- previous tab

-- maximize window
-- vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- it is for vim-maximizer plugin
-- search and replace
vim.keymap.set("n", "<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", opts)
