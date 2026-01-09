return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup {
            mappings = {
                basic = false,
                extra = false,
            }
        }

        vim.keymap.set('n', '<leader>/', function()
            require('Comment.api').toggle.linewise.current()
        end, { desc = 'Toggle comment (line)' })

        vim.keymap.set("x", "<leader>/",
            '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
            { desc = "Toggle comment (selection)" })
    end
}
