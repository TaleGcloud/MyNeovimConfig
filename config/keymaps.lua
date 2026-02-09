-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "i", "o", "t" }, "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "J", "5j", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "K", "5k", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "H", "^", { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "L", "$", { noremap = true, silent = true })
vim.keymap.set({ "n" }, "<C-l>", "<C-l>:noh<CR>", { noremap = true, silent = true })

vim.keymap.set({ "n", "x", "o" }, "f", function()
    require("flash").jump()
end, { noremap = true, silent = true })

vim.keymap.set({ "n" }, "<C-/>", function()
    Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "right", width = 0.4 } })
end, { desc = "Terminal (Root Dir)" })
