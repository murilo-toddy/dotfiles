return {
    { 'tpope/vim-fugitive' },
    {
        'ej-shafran/compile-mode.nvim',
        lazy = false,

        dependencies = {
            "nvim-lua/plenary.nvim",
            { "m00qek/baleia.nvim", tag = "v1.3.0" },
        },

        config = function()
            vim.g.compile_mode = {
                baleia_setup = true,
                auto_jump_to_first_error = false,
            }
        end,

        keys = {
            { "<leader>cc", "q:iCompile ", desc = "Open compilation input" },
            { "<leader>cg", "q:iCompile grep -rn ", desc = "Open compilation with grep input" },
            { "<leader>cm", "<cmd>Compile<cr>", desc = "Enter compilation mode" },
            { "<leader>cr", "<cmd>Recompile<cr>", desc = "Redo last compilation" },
            { "<leader>cp", "<cmd>CompilePrevError<cr>", desc = "Go to previous compilation error" },
        }
    },
}

