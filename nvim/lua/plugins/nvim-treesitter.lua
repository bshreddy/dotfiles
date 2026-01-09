return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            require('nvim-treesitter.install').update({ with_sync = true })()
        end,
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {
                    'asm',
                    'c',
                    'cpp',
                    'java',
                    'vim',
                    'vimdoc',
                    'lua',
                    'python',
                    'json',
                    'rust',
                    'make',
                    'cmake',
                    'toml'
                },
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = { enable = true },
            })
        end
    },
    {
        'nvim-treesitter/playground',
        dependencies = 'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup({
                playground = {
                    enable = true,
                }
            })

            vim.keymap.set('n', '<leader>x', '<Cmd>TSPlaygroundToggle<CR>',
                { desc = 'LSP: Toggle Nvim-treesitter Playground' })
        end
    },
}
