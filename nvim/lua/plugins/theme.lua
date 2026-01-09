return {
    'datsfilipe/min-theme.nvim',
    config = function()
        require('min-theme').setup {
            theme = 'dark',
            transparent = false,
            italics = {
                comments = true,
                keywords = true,
                functions = false,
                strings = false,
                variables = false,
            },
        }

        vim.cmd.colorscheme('min-theme')
    end
}
