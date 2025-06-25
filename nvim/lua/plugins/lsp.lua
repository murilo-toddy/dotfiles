return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer" },
        },
        lazy = false,
        dependencies = {
            "L3MON4D3/LuaSnip",
            "ray-x/lsp_signature.nvim",
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
        keys = {
            { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" },
            { "K", "<cmd>lua vim.lsp.buf.hover()<CR>" },
            { "<leader>vws", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>" },
            { "<leader>vd", "<cmd>lua vim.diagnostic.open_float()<CR>" },
            { "[d", "<cmd>lua vim.diagnostic.goto_next()<CR>" },
            { "]d", "<cmd>lua vim.diagnostic.goto_prev()<CR>" },
            { "<leader>vca", "<cmd>lua vim.lsp.buf.code_action()<CR>" },
            { "<leader>vrr", "<cmd>lua vim.lsp.buf.references()<CR>" },
            { "<leader>vrn", "<cmd>lua vim.lsp.buf.rename()<CR>" },
            { "<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<CR>" },
        }
    },
    {
        "folke/trouble.nvim",
        dependencies = {
          "nvim-lspconfig",
        },
        cmd = "Trouble",
        enabled = true,
    },
}


 -- return {
 --   {
 --     "neovim/nvim-lspconfig",
 --     dependencies = {
 --       "mason-org/mason-lspconfig.nvim",
 --       { "mason-org/mason.nvim", opts = {} },
 --       {
 --         "folke/lazydev.nvim",
 --         opts = {
 --           library = {
 --             { path = "${3rd}/luv/library", words = { "vim%.uv" } },
 --           },
 --         },
 --       },
 --     },
 --     lazy = false,
 --     config = function()
 --       require("lspconfig")
 --       require("mason-lspconfig").setup()
 --       local capabilities = require('blink.cmp').get_lsp_capabilities()
 -- 
 --       vim.api.nvim_create_autocmd('LspAttach', {
 --         callback = function(args)
 --           local c = vim.lsp.get_client_by_id(args.data.client_id)
 --           if not c then return end
 -- 
 --           if vim.bo.filetype == "lua" then
 --             -- Format the current buffer on save
 --             vim.api.nvim_create_autocmd('BufWritePre', {
 --               buffer = args.buf,
 --               callback = function()
 --                 vim.lsp.buf.format({ bufnr = args.buf, id = c.id })
 --               end,
 --             })
 --           end
 --         end,
 --       })
 --     end,
 --   }
 -- }
