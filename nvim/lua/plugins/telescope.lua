return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-ui-select.nvim',
        { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable('make') == 1
            end,
        },
        'nvim-telescope/telescope-frecency.nvim',
        'kkharji/sqlite.lua'
    },
    config = function()
        require('telescope').setup({
            defaults = {
                path_display = { 'filename_first' },
                mappings = {
                    i = {
                        ['<esc>'] = require('telescope.actions').close
                    },
                },
                file_ignore_patterns = { '.git' },
            },
            pickers = {
                find_files = {
                    follow = true,
                    hidden = true,
                    no_ignore = true,
                    no_ignore_parent = true,
                },
                keymaps = {
                    layout_strategy = "horizontal",
                    layout_config = {
                        preview_width = 0.6,
                    },
                    show_plug = false,  -- hide <Plug> mappings
                    only_buf = false,  -- include global mappings
                },
            },
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
                fzf = {
                    fuzzy = true,
                    case_mode = 'smart_case',
                },
            },
        })

        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')
        pcall(require('telescope').load_extension, 'frecency')

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Search: Search for all files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Search: Search for a string live' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Search: Search for current open buffers' })
        vim.keymap.set('n', '<leader>fs', builtin.git_files, { desc = 'Search: Search for files tracked by git' })
        -- vim.keymap.set('n', '<leader>?', builtin.keymaps, { desc = 'Search: Search for keymaps' })
        vim.keymap.set('n', '<leader>?', function()
            require('telescope.builtin').keymaps {
                -- Eventually plug frecency into this
                -- sorter = require('telescope.sorters').frecency_sorter(),
                -- show_plug = false,
                sorting_strategy = "descending",
                cache_picker = {
                    num_pickers = 10,
                },
                show_plug = false,
                filter = function(map)
                    return map.desc ~= nil
                end,
            }
        end, { desc = 'Open Command Palette' })

        vim.keymap.set('n', '<leader>fw', builtin.grep_string,
            { desc = 'Search: Selected String' })
        vim.keymap.set('n', '<leader>ft', '<Cmd>TodoTelescope<CR>', { desc = 'Search: Todo Comments' })
    end
}
