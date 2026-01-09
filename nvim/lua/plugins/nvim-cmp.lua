return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
    },
    config = function()
        local cmp = require('cmp')

        cmp.setup {
            snippet = {
                expand = function(args)
                    vim.fn['vsnip#anonymous'](args.body)
                end
            },
            sources = cmp.config.sources({
                { name = 'nvim_lsp', max_item_count = 5 },
                { name = 'vsnip',    max_item_count = 3 },
                { name = 'buffer',   max_item_count = 5 },
                { name = 'path',     max_item_count = 3 },
            }),
            mapping = cmp.mapping.preset.insert({
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
            }),
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
        }
    end
}
