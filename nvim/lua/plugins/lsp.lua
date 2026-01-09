return {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
        { 'mason-org/mason.nvim', opts = {} },
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp'
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local mason_lspconfig = require('mason-lspconfig')

        mason_lspconfig.setup {
            ensure_installed = {
                'clangd',
                'lua_ls',
                'rust_analyzer',
                'neocmake',
            },
            automatic_installation = true,
        }

        for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
            vim.lsp.config(server, {
                capabilities = capabilities,
            })
        end

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                local map = function(keys, fn, desc)
                    vim.keymap.set('n', keys, fn, { buffer = bufnr, desc = desc })
                end

                map('<leader>gd', require('telescope.builtin').lsp_definitions, 'LSP: Goto definition')
                map('<leader>gr', require('telescope.builtin').lsp_references, 'LSP: Goto References')
                map('<leader>gi', require('telescope.builtin').lsp_implementations, 'LSP: Goto Implementations')
                map('<leader>d', vim.diagnostic.open_float, 'LSP: Show diagnostic message')
                map('<leader>k', vim.lsp.buf.hover, 'LSP: Hover')
                map('<leader>rn', vim.lsp.buf.rename, 'LSP: Rename')
                map('<leader>ca', vim.lsp.buf.code_action, 'LSP: Code action')
                map('<leader>f', function()
                    vim.lsp.buf.format { async = true }
                end, 'LSP: Format buffer')
            end
        })
    end
}
