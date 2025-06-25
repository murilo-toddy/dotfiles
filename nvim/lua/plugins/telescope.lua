return {
    {
		'nvim-telescope/telescope.nvim',
        dependencies = {
            {'nvim-lua/plenary.nvim'}, 
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        lazy = false,
        config = function()
            require("telescope").setup {
                extensions = {
                    fzf = {},
                },
            }
            require("telescope").load_extension("fzf")

            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
            vim.keymap.set('n', '<leader>ps', function()
            	builtin.grep_string({ search = vim.fn.input("grep > ") })
            end)
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        end,
    },
}
