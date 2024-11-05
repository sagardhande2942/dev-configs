vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode using jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear hightlight using <leader>nh" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split windows vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split windows horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Makewindowsplitequal" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Closecurrentwindow" })

--tabmanagement
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Createnewtab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Closecurrenttab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Movetonexttab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Movetoprevioustab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew%<CR>", { desc = "Opencurrentbufferinnewtab" })

--tabstopmanagement
keymap.set(
	"n",
	"<leader>tsm",
	"<cmd>set tabstop=4<CR><cmd>set shiftwidth=4<CR><cmd>set expandtab<CR>",
	{ desc = "Increase the tab stop to 4" }
)
keymap.set(
	"n",
	"<leader>tsl",
	"<cmd>set tabstop=2<CR><cmd>set shiftwidth=2<CR><cmd>set expandtab<CR>",
	{ desc = "Change the tab top to 2" }
)
