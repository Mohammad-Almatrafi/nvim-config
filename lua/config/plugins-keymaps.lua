local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})


vim.keymap.set('n', '<leader>e', ':Neotree filesystem right toggle<CR>')
vim.keymap.set('n', '<leader>hd', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set({'n', 'v'}, '<leader>ca' ,vim.lsp.buf.code_action, {})
