return {
    'mbbill/undotree',
    config = function()
        vim.keymap.set('n', '<leader>u', function()
            vim.cmd.NvimTreeClose()
            vim.cmd.UndotreeToggle()
        end, { desc = 'Undo: Toggle Undotree' })
    end
}
