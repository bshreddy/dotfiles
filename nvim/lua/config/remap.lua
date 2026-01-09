vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Enter Vim Ex Mode' })
vim.keymap.set('n', 'Q', '<nop>')

-- greatest remap ever - Paste from System Clipboard
vim.keymap.set('x', '<leader>p', [['_dP]], { desc = 'Paste from System Clipboard' })

-- next greatest remap ever : asbjornHaland
-- Yank (Copy) to System Clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Copy selection to System Clipboard' })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = 'Copy current line to System Clipboard' })

-- Window Pane Movement Keymaps
vim.keymap.set('n', '<C-h>', '<C-W>h', { desc = 'Focus pane to Left' })
vim.keymap.set('n', '<C-j>', '<C-W>j', { desc = 'Focus pane Below' })
vim.keymap.set('n', '<C-k>', '<C-W>k', { desc = 'Focus pane Above' })
vim.keymap.set('n', '<C-l>', '<C-W>l', { desc = 'Focus pane to Right' })
vim.keymap.set('n', '<C-\\>', '<Cmd>vs<CR>', { desc = 'Split Vertically' })
vim.keymap.set('n', '<C-|>', '<Cmd>sp<CR>', { desc = 'Split Horizontally' })

-- Some convenient re maps
vim.keymap.set('n', '<leader>w', function()
    vim.lsp.buf.format {
        bufnr = vim.api.nvim_get_current_buf(),
        timeout_ms = 2000,
        async = false
    }
    vim.cmd('w')
    print('Saved current buffer')
end, { desc = 'Save current buffer' })
vim.keymap.set('n', '<leader>W', function()
    vim.cmd('wa')
    print('Saved all open buffers')
end, { desc = 'Save all open buffers' })
vim.keymap.set('n', '<leader>Q', '<Cmd>wqa<CR>', { desc = 'Save current buffer' })

