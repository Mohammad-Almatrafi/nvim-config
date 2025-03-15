local builtin = require("telescope.builtin")
vim.keymap.set({ "n", "v" }, "<leader>ff", builtin.find_files, {})
vim.keymap.set({ "n", "v" }, "<leader>fg", builtin.live_grep, {})

vim.keymap.set("n", "<leader>e", ":Neotree filesystem right focus toggle<CR>")
vim.keymap.set("n", "<leader>hd", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>p", vim.lsp.buf.format, {})
