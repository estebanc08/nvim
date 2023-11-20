vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>te", vim.cmd.term)
vim.keymap.set("n", "J", "mzJ`z")

-- move the highlighted lines up and down
vim.keymap.set("v", "J", ":m '>+2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-1<CR>gv=gv")

-- move the page up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move cursor up and down line
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- paste over text without copying text
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copy text to clipboard and vim clipboard
vim.keymap.set({"n", "v"}, "<C-C>", [["+ygv]])
-- copy only inside vim clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- cut text and does not copy
vim.keymap.set({"n", "v"}, "<BS>", [["_d]])

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")  

--find and replace highlighted text
vim.keymap.set("n", "<leader>fr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- chmod +x for the current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/esteban/packer.lua<CR>");
-- view the remapped commands
vim.keymap.set("n", "<leader>rem", "<cmd>e ~/.config/nvim/lua/esteban/remap.lua<CR>");
-- Save current file
vim.keymap.set({"v", "n", "i"}, "<C-s>", "<cmd>w<CR>");

-- tab selected text
vim.keymap.set("v", "<TAB>", ">gv", opts);
vim.keymap.set("v", "<S-TAB>", "<gv", opts);
vim.keymap.set("i", "<S-TAB>", "<C-d>"); 

--
--delete current line in insert mode
vim.keymap.set({"v", "i"}, "<C-x>", "<C-o>dd");
vim.keymap.set("n", "<C-x>", "dd");
--undo in insert mode
vim.keymap.set("i", "<C-z>", "<C-o>u");

--select to end of line
vim.keymap.set("i", "<C-S-Down>", "<C-o>v<End><Left>");
--select to start of line
vim.keymap.set("i", "<C-S-Up>", "<C-o>v<Home>");
-- soure the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
--last macro
vim.keymap.set("i", "<M-q>", "<ESC>@@");

--front of line
vim.keymap.set("i", "<Home>", "<ESC>I");

--select all text
vim.keymap.set("i", "<C-A>", "<ESC>ggi<C-o>VG");

--spell check
--vim.keymap.set("i",
