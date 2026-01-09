return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local bufferline = require("bufferline")

        bufferline.setup {
            options = {
                diagnostics = 'nvim_lsp',
                offsets = {{
                    filetype = 'NvimTree',
                    text = 'Explorer',
                    highlight = "Directory",
                    separator = true
                }}
            },
            highlights = require('min-theme').bufferline.highlights,
        }

        vim.keymap.set('n', '<leader>]', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
        vim.keymap.set('n', '<leader>[', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
        vim.keymap.set('n', '<leader>x', '<Cmd>bdelete<CR>', { desc = 'Close buffer' })
        vim.keymap.set('n', '<leader>q', function()
            vim.cmd('write')

            local bufs = vim.fn.getbufinfo({ buflisted = 1 })
            if #bufs > 1 then
                vim.cmd('bdelete')
            end
        end, { desc = "Save and close buffer" })

        for i = 1, 9 do
            vim.keymap.set('n', '<leader>'..i, function() bufferline.go_to(i, true) end, { desc = 'Goto buffer '..i })
        end
        vim.keymap.set('n', '<leader>0', function() bufferline.go_to(10, true) end, { desc = 'Goto buffer 10' })
    end
}
