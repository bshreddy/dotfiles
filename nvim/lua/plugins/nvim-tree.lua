return {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup {
            renderer = { group_empty = true },
            filters = {
                enable = false,
                dotfiles = false,
                git_ignored = false,
            },
        }

        vim.keymap.set('n', '<leader>b', '<Cmd>NvimTreeToggle<CR>', { desc = 'File: Toggle File Tree' })
        vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeFocus<CR>', { desc = 'File: Switch Focus to File Tree' })
    end
}
