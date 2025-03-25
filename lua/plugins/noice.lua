return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
        { "<leader>sn",  "",                                             desc = "+noice" },
        { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },
        { "<leader>sna", function() require("noice").cmd("all") end,     desc = "Noice All" },
        { "<leader>snd", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },
        { "<leader>snt", function() require("noice").cmd("pick") end,    desc = "Noice Picker (Telescope/FzfLua)" },
    },
    config = function(_, opts)
        -- HACK: noice shows messages from before it was enabled,
        -- but this is not ideal when Lazy is installing plugins,
        -- so clear the messages in this case.
        if vim.o.filetype == "lazy" then
            vim.cmd([[messages clear]])
        end
        require("noice").setup(opts)
    end,
}
