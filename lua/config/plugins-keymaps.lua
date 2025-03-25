local builtin = require("telescope.builtin")
vim.keymap.set({ "n", "v" }, "<leader>ff", builtin.find_files, {})
vim.keymap.set({ "n", "v" }, "<leader>fg", builtin.live_grep, {})

vim.keymap.set({ "n", "v" }, "<C-e>", ":Neotree filesystem right focus toggle<CR>")
vim.keymap.set("n", "<leader>hd", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>p", vim.lsp.buf.format, {})

local cmp = require("cmp")
cmp.setup({
    mapping = {
        ["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert },
        ["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert },
        ["<CR>"] = cmp.mapping(
            cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Insert, select = true,
            },
            { "i", "c" }
        ),
    },
})

local ls = require("luasnip")


vim.keymap.set({ "i", "s" }, "<C-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })



