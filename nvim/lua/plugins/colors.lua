return {
    "Shatur/neovim-ayu",
    config = function()
        require("ayu").setup {
            miarge = true,
            terminal = true,
            overrides = {}
        }
        vim.cmd.colorscheme("ayu")
    end,
}
